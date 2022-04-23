package com.callapp.contacts.api.helper.vk;

import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.api.helper.vk.VKUser;
import com.explorestack.iab.vast.VastError;
import com.vk.api.sdk.exceptions.VKApiIllegalResponseException;
import com.vk.api.sdk.g;
import com.vk.api.sdk.h;
import com.vk.api.sdk.internal.a;
import com.vk.api.sdk.l;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.i;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \f2\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0002\f\rB\u000f\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0014R\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, d2 = {"Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;", "Lcom/vk/api/sdk/internal/ApiCommand;", "", "Lcom/callapp/contacts/api/helper/vk/VKUser;", "uids", "", "([I)V", "USER_FIELDS", "", "onExecute", "manager", "Lcom/vk/api/sdk/VKApiManager;", "Companion", "ResponseApiParser", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/vk/VKUsersCommand.class */
public final class VKUsersCommand extends a<List<? extends VKUser>> {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f14266a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private final String f14267b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f14268c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/callapp/contacts/api/helper/vk/VKUsersCommand$Companion;", "", "()V", "CHUNK_LIMIT", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/vk/VKUsersCommand$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"Lcom/callapp/contacts/api/helper/vk/VKUsersCommand$ResponseApiParser;", "Lcom/vk/api/sdk/VKApiResponseParser;", "", "Lcom/callapp/contacts/api/helper/vk/VKUser;", "()V", "parse", Payload.RESPONSE, "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/vk/VKUsersCommand$ResponseApiParser.class */
    static final class ResponseApiParser implements h<List<? extends VKUser>> {
        private static List<VKUser> b(String response) {
            p.d(response, "response");
            try {
                JSONArray jSONArray = new JSONObject(response).getJSONArray(Payload.RESPONSE);
                ArrayList arrayList = new ArrayList(jSONArray.length());
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    VKUser.CREATOR creator = VKUser.CREATOR;
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    p.b(jSONObject, "ja.getJSONObject(i)");
                    arrayList.add(VKUser.CREATOR.a(jSONObject));
                }
                return arrayList;
            } catch (JSONException e) {
                throw new VKApiIllegalResponseException(e);
            }
        }

        @Override // com.vk.api.sdk.h
        public final /* synthetic */ List<? extends VKUser> a(String str) {
            return b(str);
        }
    }

    public VKUsersCommand() {
        this(null, 1, null);
    }

    public VKUsersCommand(int[] uids) {
        p.d(uids, "uids");
        this.f14268c = uids;
        this.f14267b = "uid,first_name,last_name,verified,blacklisted,bdate,city,country,home_town,photo_max_orig,lists,has_mobile,contacts,site,education,status,connections,exports,about,screen_name";
    }

    public /* synthetic */ VKUsersCommand(int[] iArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new int[0] : iArr);
    }

    @Override // com.vk.api.sdk.internal.a
    public final /* synthetic */ List<? extends VKUser> a(g manager) {
        p.d(manager, "manager");
        if (this.f14268c.length == 0) {
            return (List) manager.a(new l.a().a("users.get").a("fields", "uid,first_name,last_name,verified,blacklisted,bdate,city,country,home_town,photo_100,photo_max_orig,lists,has_mobile,contacts,site,education,status,connections,exports,about").b(manager.f36080c.e).a().b(), new ResponseApiParser());
        }
        ArrayList arrayList = new ArrayList();
        List<Integer> chunked = i.a(this.f14268c);
        p.d(chunked, "$this$chunked");
        for (List list : n.a(chunked, (int) VastError.ERROR_CODE_UNKNOWN, (int) VastError.ERROR_CODE_UNKNOWN)) {
            arrayList.addAll((Collection) manager.a(new l.a().a("users.get").a("user_ids", n.a(list, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62)).a("fields", "uid,first_name,last_name,verified,blacklisted,bdate,city,country,home_town,photo_100,photo_max_orig,lists,has_mobile,contacts,site,education,status,connections,exports,about").b(manager.f36080c.e).a().b(), new ResponseApiParser()));
        }
        return arrayList;
    }
}
