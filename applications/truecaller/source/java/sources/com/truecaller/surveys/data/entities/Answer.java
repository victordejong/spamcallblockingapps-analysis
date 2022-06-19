package com.truecaller.surveys.data.entities;

import androidx.annotation.Keep;
import com.truecaller.surveys.data.entities.Choice;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import q3.b.b;
import q3.b.h;
import q3.b.i.d;
import q3.b.j.c;
import q3.b.j.e;
import q3.b.k.f;
import q3.b.k.p;
import q3.b.k.q;
import q3.b.k.t;
import q3.b.k.u;
import s1.z.c.d0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b7\u0018�� \t2\u00020\u0001:\u0005\n\u000b\f\r\u000eB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003B\u001b\b\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0002\u0010\b\u0082\u0001\u0004\u000f\u0010\u0011\u0012¨\u0006\u0013"}, d2 = {"Lcom/truecaller/surveys/data/entities/Answer;", "", "<init>", "()V", "", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(ILq3/b/k/t;)V", "Companion", "Binary", "a", "FreeText", "Rating", "SingleChoice", "Lcom/truecaller/surveys/data/entities/Answer$Binary;", "Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;", "Lcom/truecaller/surveys/data/entities/Answer$FreeText;", "Lcom/truecaller/surveys/data/entities/Answer$Rating;", "surveys_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Answer.class */
public abstract class Answer {
    public static final C4542a Companion = new C4542a(null);

    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018�� \u001b2\u00020\u0001:\u0002\u001c\u001dB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016B%\b\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u000b\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u0015\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0013\u001a\u0004\b\u0014\u0010\u0004¨\u0006\u001e"}, d2 = {"Lcom/truecaller/surveys/data/entities/Answer$Binary;", "Lcom/truecaller/surveys/data/entities/Answer;", "Lcom/truecaller/surveys/data/entities/Choice;", "component1", "()Lcom/truecaller/surveys/data/entities/Choice;", "choice", "copy", "(Lcom/truecaller/surveys/data/entities/Choice;)Lcom/truecaller/surveys/data/entities/Answer$Binary;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/surveys/data/entities/Choice;", "getChoice", "<init>", "(Lcom/truecaller/surveys/data/entities/Choice;)V", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(ILcom/truecaller/surveys/data/entities/Choice;Lq3/b/k/t;)V", "Companion", "a", C22021b.f61237c, "surveys_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Answer$Binary.class */
    public static final class Binary extends Answer {
        public static final C4535b Companion = new C4535b(null);
        private final Choice choice;

        /* renamed from: com.truecaller.surveys.data.entities.Answer$Binary$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Answer$Binary$a.class */
        public static final class C4534a implements f<Binary> {

            /* renamed from: a */
            public static final C4534a f15062a;

            /* renamed from: b */
            public static final /* synthetic */ d f15063b;

            static {
                C4534a c4534a = new C4534a();
                f15062a = c4534a;
                p pVar = new p("com.truecaller.surveys.data.entities.Answer.Binary", c4534a, 1);
                pVar.g("choice", false);
                f15063b = pVar;
            }

            /* renamed from: a */
            public d m34713a() {
                return f15063b;
            }

            /* renamed from: b */
            public void m34712b(e eVar, Object obj) {
                Binary binary = (Binary) obj;
                l.e(eVar, "encoder");
                l.e(binary, "value");
                d dVar = f15063b;
                c a = eVar.a(dVar);
                Binary.write$Self(binary, a, dVar);
                a.b(dVar);
            }

            /* renamed from: c */
            public b<?>[] m34711c() {
                return q.a;
            }

            /* renamed from: d */
            public Object m34710d(q3.b.j.d dVar) {
                int i;
                Choice choice;
                l.e(dVar, "decoder");
                d dVar2 = f15063b;
                q3.b.j.b a = dVar.a(dVar2);
                if (!a.j()) {
                    choice = null;
                    int i2 = 0;
                    while (true) {
                        i = i2;
                        int q = a.q(dVar2);
                        if (q == -1) {
                            break;
                        } else if (q != 0) {
                            throw new h(q);
                        } else {
                            choice = (Choice) a.l(dVar2, 0, Choice.C4543a.f15071a, choice);
                            i2 = i | 1;
                        }
                    }
                } else {
                    choice = (Choice) a.k(dVar2, 0, Choice.C4543a.f15071a);
                    i = Integer.MAX_VALUE;
                }
                a.b(dVar2);
                return new Binary(i, choice, null);
            }

            /* renamed from: e */
            public b<?>[] m34709e() {
                return new b[]{Choice.C4543a.f15071a};
            }
        }

        /* renamed from: com.truecaller.surveys.data.entities.Answer$Binary$b */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Answer$Binary$b.class */
        public static final class C4535b {
            public C4535b(s1.z.c.f fVar) {
            }
        }

        public /* synthetic */ Binary(int i, Choice choice, t tVar) {
            super(i, null);
            if ((i & 1) != 0) {
                this.choice = choice;
                return;
            }
            throw new q3.b.c("choice");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Binary(Choice choice) {
            super(null);
            l.e(choice, "choice");
            this.choice = choice;
        }

        public static /* synthetic */ Binary copy$default(Binary binary, Choice choice, int i, Object obj) {
            if ((i & 1) != 0) {
                choice = binary.choice;
            }
            return binary.copy(choice);
        }

        public static final void write$Self(Binary binary, c cVar, d dVar) {
            l.e(binary, "self");
            l.e(cVar, "output");
            l.e(dVar, "serialDesc");
            Answer.write$Self(binary, cVar, dVar);
            cVar.q(dVar, 0, Choice.C4543a.f15071a, binary.choice);
        }

        public final Choice component1() {
            return this.choice;
        }

        public final Binary copy(Choice choice) {
            l.e(choice, "choice");
            return new Binary(choice);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Binary) && l.a(this.choice, ((Binary) obj).choice);
            }
            return true;
        }

        public final Choice getChoice() {
            return this.choice;
        }

        public int hashCode() {
            Choice choice = this.choice;
            return choice != null ? choice.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Binary(choice=");
            m8728C.append(this.choice);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018�� \u00192\u00020\u0001:\u0002\u001a\u001bB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0014B%\b\u0017\u0012\u0006\u0010\u0015\u001a\u00020\t\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0013\u0010\u0018J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0011\u001a\u0004\b\u0012\u0010\u0004¨\u0006\u001c"}, d2 = {"Lcom/truecaller/surveys/data/entities/Answer$FreeText;", "Lcom/truecaller/surveys/data/entities/Answer;", "", "component1", "()Ljava/lang/String;", "text", "copy", "(Ljava/lang/String;)Lcom/truecaller/surveys/data/entities/Answer$FreeText;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getText", "<init>", "(Ljava/lang/String;)V", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(ILjava/lang/String;Lq3/b/k/t;)V", "Companion", "a", C22021b.f61237c, "surveys_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Answer$FreeText.class */
    public static final class FreeText extends Answer {
        public static final C4537b Companion = new C4537b(null);
        private final String text;

        /* renamed from: com.truecaller.surveys.data.entities.Answer$FreeText$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Answer$FreeText$a.class */
        public static final class C4536a implements f<FreeText> {

            /* renamed from: a */
            public static final C4536a f15064a;

            /* renamed from: b */
            public static final /* synthetic */ d f15065b;

            static {
                C4536a c4536a = new C4536a();
                f15064a = c4536a;
                p pVar = new p("com.truecaller.surveys.data.entities.Answer.FreeText", c4536a, 1);
                pVar.g("text", false);
                f15065b = pVar;
            }

            /* renamed from: a */
            public d m34708a() {
                return f15065b;
            }

            /* renamed from: b */
            public void m34707b(e eVar, Object obj) {
                FreeText freeText = (FreeText) obj;
                l.e(eVar, "encoder");
                l.e(freeText, "value");
                d dVar = f15065b;
                c a = eVar.a(dVar);
                FreeText.write$Self(freeText, a, dVar);
                a.b(dVar);
            }

            /* renamed from: c */
            public b<?>[] m34706c() {
                return q.a;
            }

            /* renamed from: d */
            public Object m34705d(q3.b.j.d dVar) {
                int i;
                String str;
                l.e(dVar, "decoder");
                d dVar2 = f15065b;
                q3.b.j.b a = dVar.a(dVar2);
                if (!a.j()) {
                    str = null;
                    int i2 = 0;
                    while (true) {
                        i = i2;
                        int q = a.q(dVar2);
                        if (q == -1) {
                            break;
                        } else if (q != 0) {
                            throw new h(q);
                        } else {
                            str = a.h(dVar2, 0);
                            i2 = i | 1;
                        }
                    }
                } else {
                    str = a.h(dVar2, 0);
                    i = Integer.MAX_VALUE;
                }
                a.b(dVar2);
                return new FreeText(i, str, null);
            }

            /* renamed from: e */
            public b<?>[] m34704e() {
                return new b[]{u.b};
            }
        }

        /* renamed from: com.truecaller.surveys.data.entities.Answer$FreeText$b */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Answer$FreeText$b.class */
        public static final class C4537b {
            public C4537b(s1.z.c.f fVar) {
            }
        }

        public /* synthetic */ FreeText(int i, String str, t tVar) {
            super(i, null);
            if ((i & 1) != 0) {
                this.text = str;
                return;
            }
            throw new q3.b.c("text");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FreeText(String str) {
            super(null);
            l.e(str, "text");
            this.text = str;
        }

        public static /* synthetic */ FreeText copy$default(FreeText freeText, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = freeText.text;
            }
            return freeText.copy(str);
        }

        public static final void write$Self(FreeText freeText, c cVar, d dVar) {
            l.e(freeText, "self");
            l.e(cVar, "output");
            l.e(dVar, "serialDesc");
            Answer.write$Self(freeText, cVar, dVar);
            cVar.h(dVar, 0, freeText.text);
        }

        public final String component1() {
            return this.text;
        }

        public final FreeText copy(String str) {
            l.e(str, "text");
            return new FreeText(str);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof FreeText) && l.a(this.text, ((FreeText) obj).text);
            }
            return true;
        }

        public final String getText() {
            return this.text;
        }

        public int hashCode() {
            String str = this.text;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("FreeText(text="), this.text, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018�� \u001b2\u00020\u0001:\u0002\u001c\u001dB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016B%\b\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u000b\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u0015\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0013\u001a\u0004\b\u0014\u0010\u0004¨\u0006\u001e"}, d2 = {"Lcom/truecaller/surveys/data/entities/Answer$Rating;", "Lcom/truecaller/surveys/data/entities/Answer;", "Lcom/truecaller/surveys/data/entities/Choice;", "component1", "()Lcom/truecaller/surveys/data/entities/Choice;", "choice", "copy", "(Lcom/truecaller/surveys/data/entities/Choice;)Lcom/truecaller/surveys/data/entities/Answer$Rating;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/surveys/data/entities/Choice;", "getChoice", "<init>", "(Lcom/truecaller/surveys/data/entities/Choice;)V", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(ILcom/truecaller/surveys/data/entities/Choice;Lq3/b/k/t;)V", "Companion", "a", C22021b.f61237c, "surveys_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Answer$Rating.class */
    public static final class Rating extends Answer {
        public static final C4539b Companion = new C4539b(null);
        private final Choice choice;

        /* renamed from: com.truecaller.surveys.data.entities.Answer$Rating$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Answer$Rating$a.class */
        public static final class C4538a implements f<Rating> {

            /* renamed from: a */
            public static final C4538a f15066a;

            /* renamed from: b */
            public static final /* synthetic */ d f15067b;

            static {
                C4538a c4538a = new C4538a();
                f15066a = c4538a;
                p pVar = new p("com.truecaller.surveys.data.entities.Answer.Rating", c4538a, 1);
                pVar.g("choice", false);
                f15067b = pVar;
            }

            /* renamed from: a */
            public d m34703a() {
                return f15067b;
            }

            /* renamed from: b */
            public void m34702b(e eVar, Object obj) {
                Rating rating = (Rating) obj;
                l.e(eVar, "encoder");
                l.e(rating, "value");
                d dVar = f15067b;
                c a = eVar.a(dVar);
                Rating.write$Self(rating, a, dVar);
                a.b(dVar);
            }

            /* renamed from: c */
            public b<?>[] m34701c() {
                return q.a;
            }

            /* renamed from: d */
            public Object m34700d(q3.b.j.d dVar) {
                int i;
                Choice choice;
                l.e(dVar, "decoder");
                d dVar2 = f15067b;
                q3.b.j.b a = dVar.a(dVar2);
                if (!a.j()) {
                    choice = null;
                    int i2 = 0;
                    while (true) {
                        i = i2;
                        int q = a.q(dVar2);
                        if (q == -1) {
                            break;
                        } else if (q != 0) {
                            throw new h(q);
                        } else {
                            choice = (Choice) a.l(dVar2, 0, Choice.C4543a.f15071a, choice);
                            i2 = i | 1;
                        }
                    }
                } else {
                    choice = (Choice) a.k(dVar2, 0, Choice.C4543a.f15071a);
                    i = Integer.MAX_VALUE;
                }
                a.b(dVar2);
                return new Rating(i, choice, null);
            }

            /* renamed from: e */
            public b<?>[] m34699e() {
                return new b[]{Choice.C4543a.f15071a};
            }
        }

        /* renamed from: com.truecaller.surveys.data.entities.Answer$Rating$b */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Answer$Rating$b.class */
        public static final class C4539b {
            public C4539b(s1.z.c.f fVar) {
            }
        }

        public /* synthetic */ Rating(int i, Choice choice, t tVar) {
            super(i, null);
            if ((i & 1) != 0) {
                this.choice = choice;
                return;
            }
            throw new q3.b.c("choice");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Rating(Choice choice) {
            super(null);
            l.e(choice, "choice");
            this.choice = choice;
        }

        public static /* synthetic */ Rating copy$default(Rating rating, Choice choice, int i, Object obj) {
            if ((i & 1) != 0) {
                choice = rating.choice;
            }
            return rating.copy(choice);
        }

        public static final void write$Self(Rating rating, c cVar, d dVar) {
            l.e(rating, "self");
            l.e(cVar, "output");
            l.e(dVar, "serialDesc");
            Answer.write$Self(rating, cVar, dVar);
            cVar.q(dVar, 0, Choice.C4543a.f15071a, rating.choice);
        }

        public final Choice component1() {
            return this.choice;
        }

        public final Rating copy(Choice choice) {
            l.e(choice, "choice");
            return new Rating(choice);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Rating) && l.a(this.choice, ((Rating) obj).choice);
            }
            return true;
        }

        public final Choice getChoice() {
            return this.choice;
        }

        public int hashCode() {
            Choice choice = this.choice;
            return choice != null ? choice.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Rating(choice=");
            m8728C.append(this.choice);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018�� \u001b2\u00020\u0001:\u0002\u001c\u001dB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016B%\b\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u000b\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u0015\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0013\u001a\u0004\b\u0014\u0010\u0004¨\u0006\u001e"}, d2 = {"Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;", "Lcom/truecaller/surveys/data/entities/Answer;", "Lcom/truecaller/surveys/data/entities/Choice;", "component1", "()Lcom/truecaller/surveys/data/entities/Choice;", "choice", "copy", "(Lcom/truecaller/surveys/data/entities/Choice;)Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/surveys/data/entities/Choice;", "getChoice", "<init>", "(Lcom/truecaller/surveys/data/entities/Choice;)V", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(ILcom/truecaller/surveys/data/entities/Choice;Lq3/b/k/t;)V", "Companion", "a", C22021b.f61237c, "surveys_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Answer$SingleChoice.class */
    public static final class SingleChoice extends Answer {
        public static final C4541b Companion = new C4541b(null);
        private final Choice choice;

        /* renamed from: com.truecaller.surveys.data.entities.Answer$SingleChoice$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Answer$SingleChoice$a.class */
        public static final class C4540a implements f<SingleChoice> {

            /* renamed from: a */
            public static final C4540a f15068a;

            /* renamed from: b */
            public static final /* synthetic */ d f15069b;

            static {
                C4540a c4540a = new C4540a();
                f15068a = c4540a;
                p pVar = new p("com.truecaller.surveys.data.entities.Answer.SingleChoice", c4540a, 1);
                pVar.g("choice", false);
                f15069b = pVar;
            }

            /* renamed from: a */
            public d m34698a() {
                return f15069b;
            }

            /* renamed from: b */
            public void m34697b(e eVar, Object obj) {
                SingleChoice singleChoice = (SingleChoice) obj;
                l.e(eVar, "encoder");
                l.e(singleChoice, "value");
                d dVar = f15069b;
                c a = eVar.a(dVar);
                SingleChoice.write$Self(singleChoice, a, dVar);
                a.b(dVar);
            }

            /* renamed from: c */
            public b<?>[] m34696c() {
                return q.a;
            }

            /* renamed from: d */
            public Object m34695d(q3.b.j.d dVar) {
                int i;
                Choice choice;
                l.e(dVar, "decoder");
                d dVar2 = f15069b;
                q3.b.j.b a = dVar.a(dVar2);
                if (!a.j()) {
                    choice = null;
                    int i2 = 0;
                    while (true) {
                        i = i2;
                        int q = a.q(dVar2);
                        if (q == -1) {
                            break;
                        } else if (q != 0) {
                            throw new h(q);
                        } else {
                            choice = (Choice) a.l(dVar2, 0, Choice.C4543a.f15071a, choice);
                            i2 = i | 1;
                        }
                    }
                } else {
                    choice = (Choice) a.k(dVar2, 0, Choice.C4543a.f15071a);
                    i = Integer.MAX_VALUE;
                }
                a.b(dVar2);
                return new SingleChoice(i, choice, null);
            }

            /* renamed from: e */
            public b<?>[] m34694e() {
                return new b[]{Choice.C4543a.f15071a};
            }
        }

        /* renamed from: com.truecaller.surveys.data.entities.Answer$SingleChoice$b */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Answer$SingleChoice$b.class */
        public static final class C4541b {
            public C4541b(s1.z.c.f fVar) {
            }
        }

        public /* synthetic */ SingleChoice(int i, Choice choice, t tVar) {
            super(i, null);
            if ((i & 1) != 0) {
                this.choice = choice;
                return;
            }
            throw new q3.b.c("choice");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SingleChoice(Choice choice) {
            super(null);
            l.e(choice, "choice");
            this.choice = choice;
        }

        public static /* synthetic */ SingleChoice copy$default(SingleChoice singleChoice, Choice choice, int i, Object obj) {
            if ((i & 1) != 0) {
                choice = singleChoice.choice;
            }
            return singleChoice.copy(choice);
        }

        public static final void write$Self(SingleChoice singleChoice, c cVar, d dVar) {
            l.e(singleChoice, "self");
            l.e(cVar, "output");
            l.e(dVar, "serialDesc");
            Answer.write$Self(singleChoice, cVar, dVar);
            cVar.q(dVar, 0, Choice.C4543a.f15071a, singleChoice.choice);
        }

        public final Choice component1() {
            return this.choice;
        }

        public final SingleChoice copy(Choice choice) {
            l.e(choice, "choice");
            return new SingleChoice(choice);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof SingleChoice) && l.a(this.choice, ((SingleChoice) obj).choice);
            }
            return true;
        }

        public final Choice getChoice() {
            return this.choice;
        }

        public int hashCode() {
            Choice choice = this.choice;
            return choice != null ? choice.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("SingleChoice(choice=");
            m8728C.append(this.choice);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: com.truecaller.surveys.data.entities.Answer$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Answer$a.class */
    public static final class C4542a {
        public C4542a(s1.z.c.f fVar) {
        }

        /* renamed from: a */
        public final b<Answer> m34693a() {
            return new q3.b.e("com.truecaller.surveys.data.entities.Answer", d0.a(Answer.class), new s1.a.c[]{d0.a(Binary.class), d0.a(SingleChoice.class), d0.a(FreeText.class), d0.a(Rating.class)}, new b[]{Binary.C4534a.f15062a, SingleChoice.C4540a.f15068a, FreeText.C4536a.f15064a, Rating.C4538a.f15066a});
        }
    }

    private Answer() {
    }

    public /* synthetic */ Answer(int i, t tVar) {
    }

    public /* synthetic */ Answer(s1.z.c.f fVar) {
        this();
    }

    public static final void write$Self(Answer answer, c cVar, d dVar) {
        l.e(answer, "self");
        l.e(cVar, "output");
        l.e(dVar, "serialDesc");
    }
}
