package com.telguarder.features.advertisements;

import android.text.TextUtils;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import com.telguarder.ApplicationConstants;
import java.io.Serializable;
@DatabaseTable
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/Advert.class */
public class Advert implements Serializable {
    @DatabaseField(columnName = AdvertOrmLiteHelper.FIELD_ADVERT_BACKUP_NETWORK1, foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    public AdvertNetwork adBackup1;
    @DatabaseField(columnName = AdvertOrmLiteHelper.FIELD_ADVERT_BACKUP_NETWORK2, foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    public AdvertNetwork adBackup2;
    @DatabaseField(columnName = AdvertOrmLiteHelper.FIELD_ADVERT_BACKUP_NETWORK3, foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    public AdvertNetwork adBackup3;
    @DatabaseField(columnName = AdvertOrmLiteHelper.FIELD_ADVERT_BACKUP_NETWORK4, foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    public AdvertNetwork adBackup4;
    @DatabaseField(columnName = AdvertOrmLiteHelper.FIELD_ADVERT_BACKUP_NETWORK5, foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    public AdvertNetwork adBackup5;
    @DatabaseField(columnName = AdvertOrmLiteHelper.FIELD_ADVERT_BACKUP_NETWORK6, foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    public AdvertNetwork adBackup6;
    @DatabaseField(columnName = AdvertOrmLiteHelper.FIELD_ADVERT_BACKUP_NETWORK7, foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    public AdvertNetwork adBackup7;
    @DatabaseField(columnName = AdvertOrmLiteHelper.FIELD_ADVERT_BACKUP_NETWORK8, foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    public AdvertNetwork adBackup8;
    @DatabaseField(columnName = AdvertOrmLiteHelper.FIELD_ADVERT_BACKUP_NETWORK9, foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    public AdvertNetwork adBackup9;
    @DatabaseField(columnName = AdvertOrmLiteHelper.FIELD_CREATED_AT)
    public long createdAtDateTimeInMillis;
    @DatabaseField(generatedId = true)

    /* renamed from: id */
    public int f1275id;
    public boolean isBackupNetwork;
    @DatabaseField(columnName = AdvertOrmLiteHelper.FIELD_ADVERT_NETWORK, foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    public AdvertNetwork network;
    @DatabaseField(columnName = AdvertOrmLiteHelper.FIELD_ADVERT_PLACE)
    public String place;

    public Advert() {
        this.isBackupNetwork = false;
    }

    public Advert(Advert advert) {
        this.isBackupNetwork = false;
        this.network = advert.network;
        this.place = advert.place;
        this.adBackup1 = advert.adBackup1;
        this.adBackup2 = advert.adBackup2;
        this.adBackup3 = advert.adBackup3;
        this.adBackup4 = advert.adBackup4;
        this.adBackup5 = advert.adBackup5;
        this.adBackup6 = advert.adBackup6;
        this.adBackup7 = advert.adBackup7;
        this.adBackup8 = advert.adBackup8;
        this.adBackup9 = advert.adBackup9;
    }

    public Advert(Advert advert, AdvertNetwork advertNetwork) {
        this.isBackupNetwork = false;
        this.isBackupNetwork = true;
        this.network = advertNetwork;
        this.place = advert.place;
        this.adBackup1 = advert.adBackup1;
        this.adBackup2 = advert.adBackup2;
        this.adBackup3 = advert.adBackup3;
        this.adBackup4 = advert.adBackup4;
        this.adBackup5 = advert.adBackup5;
        this.adBackup6 = advert.adBackup6;
        this.adBackup7 = advert.adBackup7;
        this.adBackup8 = advert.adBackup8;
        this.adBackup9 = advert.adBackup9;
    }

    public boolean backupNetworkAvailable() {
        AdvertNetwork advertNetwork;
        AdvertNetwork advertNetwork2 = this.network;
        if (advertNetwork2 == null) {
            return false;
        }
        if (!this.isBackupNetwork && (advertNetwork = this.adBackup1) != null) {
            return ApplicationConstants.isAdNetworkEnabled(advertNetwork.name);
        }
        AdvertNetwork advertNetwork3 = this.adBackup2;
        if (advertNetwork3 != null && advertNetwork2 == this.adBackup1) {
            return ApplicationConstants.isAdNetworkEnabled(advertNetwork3.name);
        }
        AdvertNetwork advertNetwork4 = this.adBackup3;
        if (advertNetwork4 != null && advertNetwork2 == advertNetwork3) {
            return ApplicationConstants.isAdNetworkEnabled(advertNetwork4.name);
        }
        AdvertNetwork advertNetwork5 = this.adBackup4;
        if (advertNetwork5 != null && advertNetwork2 == advertNetwork4) {
            return ApplicationConstants.isAdNetworkEnabled(advertNetwork5.name);
        }
        AdvertNetwork advertNetwork6 = this.adBackup5;
        if (advertNetwork6 != null && advertNetwork2 == advertNetwork5) {
            return ApplicationConstants.isAdNetworkEnabled(advertNetwork6.name);
        }
        AdvertNetwork advertNetwork7 = this.adBackup6;
        if (advertNetwork7 != null && advertNetwork2 == advertNetwork6) {
            return ApplicationConstants.isAdNetworkEnabled(advertNetwork7.name);
        }
        AdvertNetwork advertNetwork8 = this.adBackup7;
        if (advertNetwork8 != null && advertNetwork2 == advertNetwork7) {
            return ApplicationConstants.isAdNetworkEnabled(advertNetwork8.name);
        }
        AdvertNetwork advertNetwork9 = this.adBackup8;
        if (advertNetwork9 != null && advertNetwork2 == advertNetwork8) {
            return ApplicationConstants.isAdNetworkEnabled(advertNetwork9.name);
        }
        AdvertNetwork advertNetwork10 = this.adBackup9;
        if (advertNetwork10 != null && advertNetwork2 == advertNetwork9) {
            return ApplicationConstants.isAdNetworkEnabled(advertNetwork10.name);
        }
        return false;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Advert)) {
            return false;
        }
        Advert advert = (Advert) obj;
        AdvertNetwork advertNetwork = advert.network;
        if (advertNetwork == null || this.network == null || advertNetwork.name == null || !advert.network.name.equals(this.network.name) || advert.network.placementId == null || !advert.network.placementId.equals(this.network.placementId)) {
            z = false;
        }
        return z;
    }

    public Advert getAdvertForBackupNetwork() {
        AdvertNetwork advertNetwork;
        AdvertNetwork advertNetwork2 = this.network;
        if (advertNetwork2 == null) {
            return null;
        }
        if (!this.isBackupNetwork && (advertNetwork = this.adBackup1) != null) {
            return new Advert(this, advertNetwork);
        }
        AdvertNetwork advertNetwork3 = this.adBackup2;
        if (advertNetwork3 != null && advertNetwork2 == this.adBackup1) {
            return new Advert(this, advertNetwork3);
        }
        AdvertNetwork advertNetwork4 = this.adBackup3;
        if (advertNetwork4 != null && advertNetwork2 == advertNetwork3) {
            return new Advert(this, advertNetwork4);
        }
        AdvertNetwork advertNetwork5 = this.adBackup4;
        if (advertNetwork5 != null && advertNetwork2 == advertNetwork4) {
            return new Advert(this, advertNetwork5);
        }
        AdvertNetwork advertNetwork6 = this.adBackup5;
        if (advertNetwork6 != null && advertNetwork2 == advertNetwork5) {
            return new Advert(this, advertNetwork6);
        }
        AdvertNetwork advertNetwork7 = this.adBackup6;
        if (advertNetwork7 != null && advertNetwork2 == advertNetwork6) {
            return new Advert(this, advertNetwork7);
        }
        AdvertNetwork advertNetwork8 = this.adBackup7;
        if (advertNetwork8 != null && advertNetwork2 == advertNetwork7) {
            return new Advert(this, advertNetwork8);
        }
        AdvertNetwork advertNetwork9 = this.adBackup8;
        if (advertNetwork9 != null && advertNetwork2 == advertNetwork8) {
            return new Advert(this, advertNetwork9);
        }
        AdvertNetwork advertNetwork10 = this.adBackup9;
        if (advertNetwork10 != null && advertNetwork2 == advertNetwork9) {
            return new Advert(this, advertNetwork10);
        }
        return null;
    }

    public String getFlowText() {
        StringBuilder sb = new StringBuilder();
        sb.append("place=");
        sb.append(!TextUtils.isEmpty(this.place) ? this.place : "null");
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(sb2);
        sb3.append(", network=");
        AdvertNetwork advertNetwork = this.network;
        sb3.append((advertNetwork == null || advertNetwork.name == null) ? "null" : this.network.name);
        String sb4 = sb3.toString();
        StringBuilder sb5 = new StringBuilder();
        sb5.append(sb4);
        sb5.append(", backup=");
        AdvertNetwork advertNetwork2 = this.adBackup1;
        sb5.append((advertNetwork2 == null || advertNetwork2.name == null) ? "null" : this.adBackup1.name);
        String sb6 = sb5.toString();
        StringBuilder sb7 = new StringBuilder();
        sb7.append(sb6);
        sb7.append(", ");
        AdvertNetwork advertNetwork3 = this.adBackup2;
        sb7.append((advertNetwork3 == null || advertNetwork3.name == null) ? "null" : this.adBackup2.name);
        String sb8 = sb7.toString();
        StringBuilder sb9 = new StringBuilder();
        sb9.append(sb8);
        sb9.append(", ");
        AdvertNetwork advertNetwork4 = this.adBackup3;
        sb9.append((advertNetwork4 == null || advertNetwork4.name == null) ? "null" : this.adBackup3.name);
        String sb10 = sb9.toString();
        StringBuilder sb11 = new StringBuilder();
        sb11.append(sb10);
        sb11.append(", ");
        AdvertNetwork advertNetwork5 = this.adBackup4;
        sb11.append((advertNetwork5 == null || advertNetwork5.name == null) ? "null" : this.adBackup4.name);
        String sb12 = sb11.toString();
        StringBuilder sb13 = new StringBuilder();
        sb13.append(sb12);
        sb13.append(", ");
        AdvertNetwork advertNetwork6 = this.adBackup5;
        sb13.append((advertNetwork6 == null || advertNetwork6.name == null) ? "null" : this.adBackup5.name);
        String sb14 = sb13.toString();
        StringBuilder sb15 = new StringBuilder();
        sb15.append(sb14);
        sb15.append(", ");
        AdvertNetwork advertNetwork7 = this.adBackup6;
        sb15.append((advertNetwork7 == null || advertNetwork7.name == null) ? "null" : this.adBackup6.name);
        String sb16 = sb15.toString();
        StringBuilder sb17 = new StringBuilder();
        sb17.append(sb16);
        sb17.append(", ");
        AdvertNetwork advertNetwork8 = this.adBackup7;
        sb17.append((advertNetwork8 == null || advertNetwork8.name == null) ? "null" : this.adBackup7.name);
        String sb18 = sb17.toString();
        StringBuilder sb19 = new StringBuilder();
        sb19.append(sb18);
        sb19.append(", ");
        AdvertNetwork advertNetwork9 = this.adBackup8;
        sb19.append((advertNetwork9 == null || advertNetwork9.name == null) ? "null" : this.adBackup8.name);
        String sb20 = sb19.toString();
        StringBuilder sb21 = new StringBuilder();
        sb21.append(sb20);
        sb21.append(", ");
        AdvertNetwork advertNetwork10 = this.adBackup9;
        AdvertNetworkName advertNetworkName = "null";
        if (advertNetwork10 != null) {
            advertNetworkName = "null";
            if (advertNetwork10.name != null) {
                advertNetworkName = this.adBackup9.name;
            }
        }
        sb21.append(advertNetworkName);
        return sb21.toString();
    }

    public boolean isListbannerAdvert() {
        return !TextUtils.isEmpty(this.place) && this.place.equals(ApplicationConstants.LISTBANNER_ADVERT_PLACEMENT);
    }

    public boolean isPostCallAdvert() {
        return !TextUtils.isEmpty(this.place) && this.place.equals("postcall");
    }
}
