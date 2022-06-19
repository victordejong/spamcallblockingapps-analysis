package com.telguarder.features.advertisements;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
@DatabaseTable
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/AdvertNetwork.class */
public class AdvertNetwork implements Serializable {
    @DatabaseField(columnName = "description")
    public String description;
    @DatabaseField(generatedId = true)

    /* renamed from: id */
    public int f1276id;
    @DatabaseField(columnName = "name")
    public AdvertNetworkName name;
    @DatabaseField(columnName = AdvertOrmLiteHelper.FIELD_ADVERT_PLACEMENT_ID)
    public String placementId;
}
