package com.truecaller.surveys.data.entities;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import q3.b.b;
import q3.b.h;
import q3.b.i.d;
import q3.b.j.c;
import q3.b.j.e;
import q3.b.k.f;
import q3.b.k.n;
import q3.b.k.p;
import q3.b.k.q;
import q3.b.k.t;
import s1.z.c.d0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b7\u0018�� \t2\u00020\u0001:\u0005\n\u000b\f\r\u000eB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003B\u001b\b\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0002\u0010\b\u0082\u0001\u0004\u000f\u0010\u0011\u0012¨\u0006\u0013"}, d2 = {"Lcom/truecaller/surveys/data/entities/SurveyFlow;", "", "<init>", "()V", "", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(ILq3/b/k/t;)V", "Companion", "Acs", "AcsBizmon", "a", "NameSuggestion", "ReportProfile", "Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;", "Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion;", "Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;", "Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon;", "surveys_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/SurveyFlow.class */
public abstract class SurveyFlow {
    public static final C4562a Companion = new C4562a(null);

    @Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018�� \u001a2\u00020\u0001:\u0002\u001b\u001cB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0014\u0010\u0015B#\b\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u000b\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0014\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0012\u001a\u0004\b\u0013\u0010\u0004¨\u0006\u001d"}, d2 = {"Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;", "Lcom/truecaller/surveys/data/entities/SurveyFlow;", "", "component1", "()Z", "onlyIfPickedUp", "copy", "(Z)Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "getOnlyIfPickedUp", "<init>", "(Z)V", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(IZLq3/b/k/t;)V", "Companion", "a", C22021b.f61237c, "surveys_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/SurveyFlow$Acs.class */
    public static final class Acs extends SurveyFlow {
        public static final C4557b Companion = new C4557b(null);
        private final boolean onlyIfPickedUp;

        /* renamed from: com.truecaller.surveys.data.entities.SurveyFlow$Acs$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/SurveyFlow$Acs$a.class */
        public static final class C4556a implements f<Acs> {

            /* renamed from: a */
            public static final C4556a f15088a;

            /* renamed from: b */
            public static final /* synthetic */ d f15089b;

            static {
                C4556a c4556a = new C4556a();
                f15088a = c4556a;
                p pVar = new p("com.truecaller.surveys.data.entities.SurveyFlow.Acs", c4556a, 1);
                pVar.g("onlyIfPickedUp", false);
                f15089b = pVar;
            }

            /* renamed from: a */
            public d m34661a() {
                return f15089b;
            }

            /* renamed from: b */
            public void m34660b(e eVar, Object obj) {
                Acs acs = (Acs) obj;
                l.e(eVar, "encoder");
                l.e(acs, "value");
                d dVar = f15089b;
                c a = eVar.a(dVar);
                Acs.write$Self(acs, a, dVar);
                a.b(dVar);
            }

            /* renamed from: c */
            public b<?>[] m34659c() {
                return q.a;
            }

            /* renamed from: d */
            public Object m34658d(q3.b.j.d dVar) {
                int i;
                boolean z;
                l.e(dVar, "decoder");
                d dVar2 = f15089b;
                q3.b.j.b a = dVar.a(dVar2);
                if (!a.j()) {
                    z = false;
                    int i2 = 0;
                    while (true) {
                        i = i2;
                        int q = a.q(dVar2);
                        if (q == -1) {
                            break;
                        } else if (q != 0) {
                            throw new h(q);
                        } else {
                            z = a.t(dVar2, 0);
                            i2 = i | 1;
                        }
                    }
                } else {
                    z = a.t(dVar2, 0);
                    i = Integer.MAX_VALUE;
                }
                a.b(dVar2);
                return new Acs(i, z, null);
            }

            /* renamed from: e */
            public b<?>[] m34657e() {
                return new b[]{q3.b.k.e.b};
            }
        }

        /* renamed from: com.truecaller.surveys.data.entities.SurveyFlow$Acs$b */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/SurveyFlow$Acs$b.class */
        public static final class C4557b {
            public C4557b(s1.z.c.f fVar) {
            }
        }

        public /* synthetic */ Acs(int i, boolean z, t tVar) {
            super(i, null);
            if ((i & 1) != 0) {
                this.onlyIfPickedUp = z;
                return;
            }
            throw new q3.b.c("onlyIfPickedUp");
        }

        public Acs(boolean z) {
            super(null);
            this.onlyIfPickedUp = z;
        }

        public static /* synthetic */ Acs copy$default(Acs acs, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = acs.onlyIfPickedUp;
            }
            return acs.copy(z);
        }

        public static final void write$Self(Acs acs, c cVar, d dVar) {
            l.e(acs, "self");
            l.e(cVar, "output");
            l.e(dVar, "serialDesc");
            SurveyFlow.write$Self(acs, cVar, dVar);
            cVar.g(dVar, 0, acs.onlyIfPickedUp);
        }

        public final boolean component1() {
            return this.onlyIfPickedUp;
        }

        public final Acs copy(boolean z) {
            return new Acs(z);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Acs) && this.onlyIfPickedUp == ((Acs) obj).onlyIfPickedUp;
            }
            return true;
        }

        public final boolean getOnlyIfPickedUp() {
            return this.onlyIfPickedUp;
        }

        public int hashCode() {
            boolean z = this.onlyIfPickedUp;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("Acs(onlyIfPickedUp="), this.onlyIfPickedUp, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018�� \u001a2\u00020\u0001:\u0002\u001b\u001cB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0014\u0010\u0015B#\b\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u000b\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0014\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0012\u001a\u0004\b\u0013\u0010\u0004¨\u0006\u001d"}, d2 = {"Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon;", "Lcom/truecaller/surveys/data/entities/SurveyFlow;", "", "component1", "()Z", "onlyIfPickedUp", "copy", "(Z)Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "getOnlyIfPickedUp", "<init>", "(Z)V", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(IZLq3/b/k/t;)V", "Companion", "a", C22021b.f61237c, "surveys_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon.class */
    public static final class AcsBizmon extends SurveyFlow {
        public static final C4559b Companion = new C4559b(null);
        private final boolean onlyIfPickedUp;

        /* renamed from: com.truecaller.surveys.data.entities.SurveyFlow$AcsBizmon$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon$a.class */
        public static final class C4558a implements f<AcsBizmon> {

            /* renamed from: a */
            public static final C4558a f15090a;

            /* renamed from: b */
            public static final /* synthetic */ d f15091b;

            static {
                C4558a c4558a = new C4558a();
                f15090a = c4558a;
                p pVar = new p("com.truecaller.surveys.data.entities.SurveyFlow.AcsBizmon", c4558a, 1);
                pVar.g("onlyIfPickedUp", false);
                f15091b = pVar;
            }

            /* renamed from: a */
            public d m34656a() {
                return f15091b;
            }

            /* renamed from: b */
            public void m34655b(e eVar, Object obj) {
                AcsBizmon acsBizmon = (AcsBizmon) obj;
                l.e(eVar, "encoder");
                l.e(acsBizmon, "value");
                d dVar = f15091b;
                c a = eVar.a(dVar);
                AcsBizmon.write$Self(acsBizmon, a, dVar);
                a.b(dVar);
            }

            /* renamed from: c */
            public b<?>[] m34654c() {
                return q.a;
            }

            /* renamed from: d */
            public Object m34653d(q3.b.j.d dVar) {
                int i;
                boolean z;
                l.e(dVar, "decoder");
                d dVar2 = f15091b;
                q3.b.j.b a = dVar.a(dVar2);
                if (!a.j()) {
                    z = false;
                    int i2 = 0;
                    while (true) {
                        i = i2;
                        int q = a.q(dVar2);
                        if (q == -1) {
                            break;
                        } else if (q != 0) {
                            throw new h(q);
                        } else {
                            z = a.t(dVar2, 0);
                            i2 = i | 1;
                        }
                    }
                } else {
                    z = a.t(dVar2, 0);
                    i = Integer.MAX_VALUE;
                }
                a.b(dVar2);
                return new AcsBizmon(i, z, null);
            }

            /* renamed from: e */
            public b<?>[] m34652e() {
                return new b[]{q3.b.k.e.b};
            }
        }

        /* renamed from: com.truecaller.surveys.data.entities.SurveyFlow$AcsBizmon$b */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon$b.class */
        public static final class C4559b {
            public C4559b(s1.z.c.f fVar) {
            }
        }

        public /* synthetic */ AcsBizmon(int i, boolean z, t tVar) {
            super(i, null);
            if ((i & 1) != 0) {
                this.onlyIfPickedUp = z;
                return;
            }
            throw new q3.b.c("onlyIfPickedUp");
        }

        public AcsBizmon(boolean z) {
            super(null);
            this.onlyIfPickedUp = z;
        }

        public static /* synthetic */ AcsBizmon copy$default(AcsBizmon acsBizmon, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = acsBizmon.onlyIfPickedUp;
            }
            return acsBizmon.copy(z);
        }

        public static final void write$Self(AcsBizmon acsBizmon, c cVar, d dVar) {
            l.e(acsBizmon, "self");
            l.e(cVar, "output");
            l.e(dVar, "serialDesc");
            SurveyFlow.write$Self(acsBizmon, cVar, dVar);
            cVar.g(dVar, 0, acsBizmon.onlyIfPickedUp);
        }

        public final boolean component1() {
            return this.onlyIfPickedUp;
        }

        public final AcsBizmon copy(boolean z) {
            return new AcsBizmon(z);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof AcsBizmon) && this.onlyIfPickedUp == ((AcsBizmon) obj).onlyIfPickedUp;
            }
            return true;
        }

        public final boolean getOnlyIfPickedUp() {
            return this.onlyIfPickedUp;
        }

        public int hashCode() {
            boolean z = this.onlyIfPickedUp;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("AcsBizmon(onlyIfPickedUp="), this.onlyIfPickedUp, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018�� \u001a2\u00020\u0001:\u0002\u001b\u001cB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0014\u0010\u0015B#\b\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u000b\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0014\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0012\u001a\u0004\b\u0013\u0010\u0004¨\u0006\u001d"}, d2 = {"Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion;", "Lcom/truecaller/surveys/data/entities/SurveyFlow;", "", "component1", "()Z", "onlyIfPickedUp", "copy", "(Z)Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "getOnlyIfPickedUp", "<init>", "(Z)V", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(IZLq3/b/k/t;)V", "Companion", "a", C22021b.f61237c, "surveys_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion.class */
    public static final class NameSuggestion extends SurveyFlow {
        public static final C4561b Companion = new C4561b(null);
        private final boolean onlyIfPickedUp;

        /* renamed from: com.truecaller.surveys.data.entities.SurveyFlow$NameSuggestion$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion$a.class */
        public static final class C4560a implements f<NameSuggestion> {

            /* renamed from: a */
            public static final C4560a f15092a;

            /* renamed from: b */
            public static final /* synthetic */ d f15093b;

            static {
                C4560a c4560a = new C4560a();
                f15092a = c4560a;
                p pVar = new p("com.truecaller.surveys.data.entities.SurveyFlow.NameSuggestion", c4560a, 1);
                pVar.g("onlyIfPickedUp", false);
                f15093b = pVar;
            }

            /* renamed from: a */
            public d m34651a() {
                return f15093b;
            }

            /* renamed from: b */
            public void m34650b(e eVar, Object obj) {
                NameSuggestion nameSuggestion = (NameSuggestion) obj;
                l.e(eVar, "encoder");
                l.e(nameSuggestion, "value");
                d dVar = f15093b;
                c a = eVar.a(dVar);
                NameSuggestion.write$Self(nameSuggestion, a, dVar);
                a.b(dVar);
            }

            /* renamed from: c */
            public b<?>[] m34649c() {
                return q.a;
            }

            /* renamed from: d */
            public Object m34648d(q3.b.j.d dVar) {
                int i;
                boolean z;
                l.e(dVar, "decoder");
                d dVar2 = f15093b;
                q3.b.j.b a = dVar.a(dVar2);
                if (!a.j()) {
                    z = false;
                    int i2 = 0;
                    while (true) {
                        i = i2;
                        int q = a.q(dVar2);
                        if (q == -1) {
                            break;
                        } else if (q != 0) {
                            throw new h(q);
                        } else {
                            z = a.t(dVar2, 0);
                            i2 = i | 1;
                        }
                    }
                } else {
                    z = a.t(dVar2, 0);
                    i = Integer.MAX_VALUE;
                }
                a.b(dVar2);
                return new NameSuggestion(i, z, null);
            }

            /* renamed from: e */
            public b<?>[] m34647e() {
                return new b[]{q3.b.k.e.b};
            }
        }

        /* renamed from: com.truecaller.surveys.data.entities.SurveyFlow$NameSuggestion$b */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion$b.class */
        public static final class C4561b {
            public C4561b(s1.z.c.f fVar) {
            }
        }

        public /* synthetic */ NameSuggestion(int i, boolean z, t tVar) {
            super(i, null);
            if ((i & 1) != 0) {
                this.onlyIfPickedUp = z;
                return;
            }
            throw new q3.b.c("onlyIfPickedUp");
        }

        public NameSuggestion(boolean z) {
            super(null);
            this.onlyIfPickedUp = z;
        }

        public static /* synthetic */ NameSuggestion copy$default(NameSuggestion nameSuggestion, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = nameSuggestion.onlyIfPickedUp;
            }
            return nameSuggestion.copy(z);
        }

        public static final void write$Self(NameSuggestion nameSuggestion, c cVar, d dVar) {
            l.e(nameSuggestion, "self");
            l.e(cVar, "output");
            l.e(dVar, "serialDesc");
            SurveyFlow.write$Self(nameSuggestion, cVar, dVar);
            cVar.g(dVar, 0, nameSuggestion.onlyIfPickedUp);
        }

        public final boolean component1() {
            return this.onlyIfPickedUp;
        }

        public final NameSuggestion copy(boolean z) {
            return new NameSuggestion(z);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof NameSuggestion) && this.onlyIfPickedUp == ((NameSuggestion) obj).onlyIfPickedUp;
            }
            return true;
        }

        public final boolean getOnlyIfPickedUp() {
            return this.onlyIfPickedUp;
        }

        public int hashCode() {
            boolean z = this.onlyIfPickedUp;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("NameSuggestion(onlyIfPickedUp="), this.onlyIfPickedUp, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020��0\u0002HÆ\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;", "Lcom/truecaller/surveys/data/entities/SurveyFlow;", "Lq3/b/b;", "serializer", "()Lq3/b/b;", "<init>", "()V", "surveys_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/SurveyFlow$ReportProfile.class */
    public static final class ReportProfile extends SurveyFlow {
        public static final ReportProfile INSTANCE = new ReportProfile();

        private ReportProfile() {
            super(null);
        }

        public final b<ReportProfile> serializer() {
            return new n("com.truecaller.surveys.data.entities.SurveyFlow.ReportProfile", INSTANCE);
        }
    }

    /* renamed from: com.truecaller.surveys.data.entities.SurveyFlow$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/SurveyFlow$a.class */
    public static final class C4562a {
        public C4562a(s1.z.c.f fVar) {
        }

        /* renamed from: a */
        public final b<SurveyFlow> m34646a() {
            return new q3.b.e("com.truecaller.surveys.data.entities.SurveyFlow", d0.a(SurveyFlow.class), new s1.a.c[]{d0.a(Acs.class), d0.a(NameSuggestion.class), d0.a(ReportProfile.class), d0.a(AcsBizmon.class)}, new b[]{Acs.C4556a.f15088a, NameSuggestion.C4560a.f15092a, new n("com.truecaller.surveys.data.entities.SurveyFlow.ReportProfile", ReportProfile.INSTANCE), AcsBizmon.C4558a.f15090a});
        }
    }

    private SurveyFlow() {
    }

    public /* synthetic */ SurveyFlow(int i, t tVar) {
    }

    public /* synthetic */ SurveyFlow(s1.z.c.f fVar) {
        this();
    }

    public static final void write$Self(SurveyFlow surveyFlow, c cVar, d dVar) {
        l.e(surveyFlow, "self");
        l.e(cVar, "output");
        l.e(dVar, "serialDesc");
    }
}
