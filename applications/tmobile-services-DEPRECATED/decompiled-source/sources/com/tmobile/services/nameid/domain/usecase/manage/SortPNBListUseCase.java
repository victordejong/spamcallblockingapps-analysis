package com.tmobile.services.nameid.domain.usecase.manage;

import com.tmobile.services.nameid.domain.usecase.Result;
import com.tmobile.services.nameid.domain.usecase.UseCase;
import com.tmobile.services.nameid.model.UserPreference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018��2\u00020\u0001:\u0001\u000eB\u0015\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\r\u0010\fJ\u001b\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R(\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/tmobile/services/nameid/domain/usecase/manage/SortPNBListUseCase;", "Lcom/tmobile/services/nameid/domain/usecase/UseCase;", "Lcom/tmobile/services/nameid/domain/usecase/Result;", "Ljava/util/ArrayList;", "Lcom/tmobile/services/nameid/model/UserPreference;", "execute", "()Lcom/tmobile/services/nameid/domain/usecase/Result;", "list", "Ljava/util/ArrayList;", "getList", "()Ljava/util/ArrayList;", "setList", "(Ljava/util/ArrayList;)V", "<init>", "CallTypeAlphaNumericSorter", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/domain/usecase/manage/SortPNBListUseCase.class */
public final class SortPNBListUseCase implements UseCase<ArrayList<UserPreference>> {
    @NotNull

    /* renamed from: a */
    private ArrayList<UserPreference> f13486a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0005¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bR2\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\fj\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t`\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0010\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/tmobile/services/nameid/domain/usecase/manage/SortPNBListUseCase$CallTypeAlphaNumericSorter;", "Ljava/util/Comparator;", "Lcom/tmobile/services/nameid/model/UserPreference;", "o1", "o2", "", "compare", "(Lcom/tmobile/services/nameid/model/UserPreference;Lcom/tmobile/services/nameid/model/UserPreference;)I", "pref", "", "getName", "(Lcom/tmobile/services/nameid/model/UserPreference;)Ljava/lang/String;", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "nameCache", "Ljava/util/HashMap;", "size", "I", "getSize", "()I", "<init>", "(I)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/domain/usecase/manage/SortPNBListUseCase$CallTypeAlphaNumericSorter.class */
    public static final class CallTypeAlphaNumericSorter implements Comparator<UserPreference> {

        /* renamed from: f */
        private HashMap<String, String> f13487f;

        /* renamed from: g */
        private final int f13488g;

        public CallTypeAlphaNumericSorter(int i) {
            this.f13488g = i;
            this.f13487f = new HashMap<>(this.f13488g);
        }

        /* renamed from: a */
        public int compare(@NotNull UserPreference o1, @NotNull UserPreference o2) {
            Intrinsics.m1830e(o1, "o1");
            Intrinsics.m1830e(o2, "o2");
            String b = m6573b(o1);
            String b2 = m6573b(o2);
            int i = 1;
            if (Intrinsics.m1834a(b, "") && Intrinsics.m1834a(b2, "")) {
                String e164Number = o1.getE164Number();
                Intrinsics.m1831d(e164Number, "o1.e164Number");
                String c = new Regex("[^0-9]").m1552c(e164Number, "");
                String e164Number2 = o2.getE164Number();
                Intrinsics.m1831d(e164Number2, "o2.e164Number");
                i = c.compareTo(new Regex("[^0-9]").m1552c(e164Number2, ""));
            } else if (!Intrinsics.m1834a(b, "")) {
                i = Intrinsics.m1834a(b2, "") ? -1 : StringsKt__StringsJVMKt.m1490m(b, b2, true);
            }
            return i;
        }

        @NotNull
        /* renamed from: b */
        public final String m6573b(@NotNull UserPreference pref) {
            Intrinsics.m1830e(pref, "pref");
            boolean containsKey = this.f13487f.containsKey(pref.getE164Number());
            String str = "";
            if (containsKey) {
                String str2 = this.f13487f.get(pref.getE164Number());
                if (str2 != null) {
                    str = str2;
                }
                Intrinsics.m1831d(str, "nameCache[pref.e164Number] ?: \"\"");
            } else {
                String tryGetDisplayString = pref.tryGetDisplayString();
                Intrinsics.m1831d(tryGetDisplayString, "pref.tryGetDisplayString()");
                String c = new Regex("[^a-zA-Z]").m1552c(tryGetDisplayString, "");
                HashMap<String, String> hashMap = this.f13487f;
                String e164Number = pref.getE164Number();
                Intrinsics.m1831d(e164Number, "pref.e164Number");
                hashMap.put(e164Number, c);
                str = c;
            }
            return str;
        }
    }

    public SortPNBListUseCase(@NotNull ArrayList<UserPreference> list) {
        Intrinsics.m1830e(list, "list");
        this.f13486a = list;
    }

    @NotNull
    /* renamed from: a */
    public Result<ArrayList<UserPreference>> m6575a() {
        if (!this.f13486a.isEmpty()) {
            ArrayList<UserPreference> arrayList = this.f13486a;
            Collections.sort(arrayList, new CallTypeAlphaNumericSorter(arrayList.size()));
        }
        return new Result<>(true, this.f13486a);
    }
}
