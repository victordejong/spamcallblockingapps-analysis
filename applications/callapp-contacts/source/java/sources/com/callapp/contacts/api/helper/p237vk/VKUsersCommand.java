package com.callapp.contacts.api.helper.p237vk;

import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.api.helper.p237vk.VKUser;
import com.explorestack.iab.vast.VastError;
import com.p488vk.api.sdk.AbstractC17688h;
import com.p488vk.api.sdk.C17685g;
import com.p488vk.api.sdk.C17699l;
import com.p488vk.api.sdk.exceptions.VKApiIllegalResponseException;
import com.p488vk.api.sdk.internal.AbstractC17692a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \f2\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0002\f\rB\u000f\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0014R\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;", "Lcom/vk/api/sdk/internal/ApiCommand;", "", "Lcom/callapp/contacts/api/helper/vk/VKUser;", "uids", "", "([I)V", "USER_FIELDS", "", "onExecute", "manager", "Lcom/vk/api/sdk/VKApiManager;", "Companion", "ResponseApiParser", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.callapp.contacts.api.helper.vk.VKUsersCommand */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/vk/VKUsersCommand.class */
public final class VKUsersCommand extends AbstractC17692a<List<? extends VKUser>> {

    /* renamed from: a */
    public static final Companion f24938a = new Companion(null);

    /* renamed from: b */
    private final String f24939b;

    /* renamed from: c */
    private final int[] f24940c;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/vk/VKUsersCommand$Companion;", "", "()V", "CHUNK_LIMIT", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.callapp.contacts.api.helper.vk.VKUsersCommand$Companion */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/vk/VKUsersCommand$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/vk/VKUsersCommand$ResponseApiParser;", "Lcom/vk/api/sdk/VKApiResponseParser;", "", "Lcom/callapp/contacts/api/helper/vk/VKUser;", "()V", "parse", Payload.RESPONSE, "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.callapp.contacts.api.helper.vk.VKUsersCommand$ResponseApiParser */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/vk/VKUsersCommand$ResponseApiParser.class */
    static final class ResponseApiParser implements AbstractC17688h<List<? extends VKUser>> {
        /* renamed from: b */
        private static List<VKUser> m29083b(String response) {
            C18524p.m3840d(response, "response");
            try {
                JSONArray jSONArray = new JSONObject(response).getJSONArray(Payload.RESPONSE);
                ArrayList arrayList = new ArrayList(jSONArray.length());
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    VKUser.CREATOR creator = VKUser.CREATOR;
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    C18524p.m3843b(jSONObject, "ja.getJSONObject(i)");
                    arrayList.add(VKUser.CREATOR.m29084a(jSONObject));
                }
                return arrayList;
            } catch (JSONException e) {
                throw new VKApiIllegalResponseException(e);
            }
        }

        @Override // com.p488vk.api.sdk.AbstractC17688h
        /* renamed from: a */
        public final /* synthetic */ List<? extends VKUser> mo4826a(String str) {
            return m29083b(str);
        }
    }

    public VKUsersCommand() {
        this(null, 1, null);
    }

    public VKUsersCommand(int[] uids) {
        C18524p.m3840d(uids, "uids");
        this.f24940c = uids;
        this.f24939b = "uid,first_name,last_name,verified,blacklisted,bdate,city,country,home_town,photo_max_orig,lists,has_mobile,contacts,site,education,status,connections,exports,about,screen_name";
    }

    public /* synthetic */ VKUsersCommand(int[] iArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new int[0] : iArr);
    }

    @Override // com.p488vk.api.sdk.internal.AbstractC17692a
    /* renamed from: a */
    public final /* synthetic */ List<? extends VKUser> mo4824a(C17685g manager) {
        C18524p.m3840d(manager, "manager");
        if (this.f24940c.length == 0) {
            return (List) manager.m4828a(new C17699l.C17700a().m4809a("users.get").m4808a("fields", "uid,first_name,last_name,verified,blacklisted,bdate,city,country,home_town,photo_100,photo_max_orig,lists,has_mobile,contacts,site,education,status,connections,exports,about").m4806b(manager.f62507c.f62440e).m4810a().m4807b(), new ResponseApiParser());
        }
        ArrayList arrayList = new ArrayList();
        List<Integer> chunked = C18273i.m4208a(this.f24940c);
        C18524p.m3840d(chunked, "$this$chunked");
        for (List list : C18282n.m4152a(chunked, (int) VastError.ERROR_CODE_UNKNOWN, (int) VastError.ERROR_CODE_UNKNOWN)) {
            arrayList.addAll((Collection) manager.m4828a(new C17699l.C17700a().m4809a("users.get").m4808a("user_ids", C18282n.m4148a(list, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62)).m4808a("fields", "uid,first_name,last_name,verified,blacklisted,bdate,city,country,home_town,photo_100,photo_max_orig,lists,has_mobile,contacts,site,education,status,connections,exports,about").m4806b(manager.f62507c.f62440e).m4810a().m4807b(), new ResponseApiParser()));
        }
        return arrayList;
    }
}
