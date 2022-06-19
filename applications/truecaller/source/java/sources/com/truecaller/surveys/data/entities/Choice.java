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
import q3.b.k.g;
import q3.b.k.p;
import q3.b.k.q;
import q3.b.k.t;
import q3.b.k.u;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018�� !2\u00020\u0001:\u0002\"#B!\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001b\u0010\u001cB7\b\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b\u001b\u0010 J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ0\u0010\r\u001a\u00020��2\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0007J\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0015\u001a\u0004\b\u0016\u0010\u0004R\u001b\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0017\u001a\u0004\b\u0018\u0010\tR\u0019\u0010\u000b\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0019\u001a\u0004\b\u001a\u0010\u0007¨\u0006$"}, d2 = {"Lcom/truecaller/surveys/data/entities/Choice;", "", "", "component1", "()I", "", "component2", "()Ljava/lang/String;", "component3", "()Ljava/lang/Integer;", "id", "text", "followupQuestionId", "copy", "(ILjava/lang/String;Ljava/lang/Integer;)Lcom/truecaller/surveys/data/entities/Choice;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getId", "Ljava/lang/Integer;", "getFollowupQuestionId", "Ljava/lang/String;", "getText", "<init>", "(ILjava/lang/String;Ljava/lang/Integer;)V", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(IILjava/lang/String;Ljava/lang/Integer;Lq3/b/k/t;)V", "Companion", "a", C22021b.f61237c, "surveys_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Choice.class */
public final class Choice {
    public static final C4544b Companion = new C4544b(null);
    private final Integer followupQuestionId;

    /* renamed from: id */
    private final int f15070id;
    private final String text;

    /* renamed from: com.truecaller.surveys.data.entities.Choice$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Choice$a.class */
    public static final class C4543a implements f<Choice> {

        /* renamed from: a */
        public static final C4543a f15071a;

        /* renamed from: b */
        public static final /* synthetic */ d f15072b;

        static {
            C4543a c4543a = new C4543a();
            f15071a = c4543a;
            p pVar = new p("com.truecaller.surveys.data.entities.Choice", c4543a, 3);
            pVar.g("id", false);
            pVar.g("text", false);
            pVar.g("followupQuestionId", false);
            f15072b = pVar;
        }

        /* renamed from: a */
        public d m34692a() {
            return f15072b;
        }

        /* renamed from: b */
        public void m34691b(e eVar, Object obj) {
            Choice choice = (Choice) obj;
            l.e(eVar, "encoder");
            l.e(choice, "value");
            d dVar = f15072b;
            c a = eVar.a(dVar);
            Choice.write$Self(choice, a, dVar);
            a.b(dVar);
        }

        /* renamed from: c */
        public b<?>[] m34690c() {
            return q.a;
        }

        /* renamed from: d */
        public Object m34689d(q3.b.j.d dVar) {
            int i;
            String str;
            int i2;
            Integer num;
            l.e(dVar, "decoder");
            d dVar2 = f15072b;
            q3.b.j.b a = dVar.a(dVar2);
            if (!a.j()) {
                str = null;
                num = null;
                i2 = 0;
                int i3 = 0;
                while (true) {
                    i = i3;
                    int q = a.q(dVar2);
                    if (q == -1) {
                        break;
                    } else if (q == 0) {
                        i2 = a.e(dVar2, 0);
                        i3 = i | 1;
                    } else if (q == 1) {
                        str = a.h(dVar2, 1);
                        i3 = i | 2;
                    } else if (q != 2) {
                        throw new h(q);
                    } else {
                        num = (Integer) a.i(dVar2, 2, g.b, num);
                        i3 = i | 4;
                    }
                }
            } else {
                i2 = a.e(dVar2, 0);
                str = a.h(dVar2, 1);
                num = (Integer) a.r(dVar2, 2, g.b);
                i = Integer.MAX_VALUE;
            }
            a.b(dVar2);
            return new Choice(i, i2, str, num, null);
        }

        /* renamed from: e */
        public b<?>[] m34688e() {
            b<?> bVar = g.b;
            return new b[]{bVar, u.b, s1.a.a.a.v0.f.d.r1(bVar)};
        }
    }

    /* renamed from: com.truecaller.surveys.data.entities.Choice$b */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Choice$b.class */
    public static final class C4544b {
        public C4544b(s1.z.c.f fVar) {
        }
    }

    public /* synthetic */ Choice(int i, int i2, String str, Integer num, t tVar) {
        if ((i & 1) != 0) {
            this.f15070id = i2;
            if ((i & 2) == 0) {
                throw new q3.b.c("text");
            }
            this.text = str;
            if ((i & 4) == 0) {
                throw new q3.b.c("followupQuestionId");
            }
            this.followupQuestionId = num;
            return;
        }
        throw new q3.b.c("id");
    }

    public Choice(int i, String str, Integer num) {
        l.e(str, "text");
        this.f15070id = i;
        this.text = str;
        this.followupQuestionId = num;
    }

    public static /* synthetic */ Choice copy$default(Choice choice, int i, String str, Integer num, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = choice.f15070id;
        }
        if ((i2 & 2) != 0) {
            str = choice.text;
        }
        if ((i2 & 4) != 0) {
            num = choice.followupQuestionId;
        }
        return choice.copy(i, str, num);
    }

    public static final void write$Self(Choice choice, c cVar, d dVar) {
        l.e(choice, "self");
        l.e(cVar, "output");
        l.e(dVar, "serialDesc");
        cVar.f(dVar, 0, choice.f15070id);
        cVar.h(dVar, 1, choice.text);
        cVar.l(dVar, 2, g.b, choice.followupQuestionId);
    }

    public final int component1() {
        return this.f15070id;
    }

    public final String component2() {
        return this.text;
    }

    public final Integer component3() {
        return this.followupQuestionId;
    }

    public final Choice copy(int i, String str, Integer num) {
        l.e(str, "text");
        return new Choice(i, str, num);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Choice)) {
                return false;
            }
            Choice choice = (Choice) obj;
            return this.f15070id == choice.f15070id && l.a(this.text, choice.text) && l.a(this.followupQuestionId, choice.followupQuestionId);
        }
        return true;
    }

    public final Integer getFollowupQuestionId() {
        return this.followupQuestionId;
    }

    public final int getId() {
        return this.f15070id;
    }

    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        int i = this.f15070id;
        String str = this.text;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Integer num = this.followupQuestionId;
        if (num != null) {
            i2 = num.hashCode();
        }
        return (((i * 31) + hashCode) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Choice(id=");
        m8728C.append(this.f15070id);
        m8728C.append(", text=");
        m8728C.append(this.text);
        m8728C.append(", followupQuestionId=");
        return C22128a.m8689L2(m8728C, this.followupQuestionId, ")");
    }
}
