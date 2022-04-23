package com.vk.a.a.a;

import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.api.helper.vk.VKUser;
import com.facebook.AccessToken;
import com.vk.api.sdk.d.b;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import org.json.JSONArray;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\u0018��2\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"Lcom/vk/sdk/sample/requests/VKFriendsRequest;", "Lcom/vk/api/sdk/requests/VKRequest;", "", "Lcom/callapp/contacts/api/helper/vk/VKUser;", "uid", "", "(I)V", "parse", "r", "Lorg/json/JSONObject;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/a/a/a/a.class */
public final class a extends b<List<? extends VKUser>> {
    public a() {
        this(0, 1, null);
    }

    public a(int i) {
        super("friends.get", null, 2, null);
        if (i != 0) {
            a(AccessToken.USER_ID_KEY, i);
        }
        a("fields", "uid,first_name,last_name,verified,blacklisted,bdate,city,country,home_town,photo_100,photo_max_orig,lists,has_mobile,contacts,site,education,status,connections,exports,about");
    }

    public /* synthetic */ a(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i);
    }

    @Override // com.vk.api.sdk.d.b
    public final /* synthetic */ List<? extends VKUser> a(JSONObject r) {
        p.d(r, "r");
        JSONArray jSONArray = r.getJSONObject(Payload.RESPONSE).getJSONArray("items");
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            VKUser.CREATOR creator = VKUser.CREATOR;
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            p.b(jSONObject, "users.getJSONObject(i)");
            arrayList.add(VKUser.CREATOR.a(jSONObject));
        }
        return arrayList;
    }
}
