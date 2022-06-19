package com.truecaller.surveys.data.entities;

import androidx.annotation.Keep;
import com.truecaller.surveys.data.entities.Choice;
import java.util.List;
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
import s1.z.c.d0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b7\u0018�� \u00122\u00020\u0001:\u0005\u0013\u0014\u0015\u0016\u0017B\t\b\u0002¢\u0006\u0004\b\f\u0010\rB\u001b\b\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\f\u0010\u0011R\u0016\u0010\u0005\u001a\u00020\u00028&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00068&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u000b\u001a\u00020\u00068&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\b\u0082\u0001\u0004\u0018\u0019\u001a\u001b¨\u0006\u001c"}, d2 = {"Lcom/truecaller/surveys/data/entities/Question;", "", "", "getId", "()I", "id", "", "getHeaderMessage", "()Ljava/lang/String;", "headerMessage", "getMessage", "message", "<init>", "()V", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(ILq3/b/k/t;)V", "Companion", "Binary", "a", "FreeText", "Rating", "SingleChoice", "Lcom/truecaller/surveys/data/entities/Question$Binary;", "Lcom/truecaller/surveys/data/entities/Question$SingleChoice;", "Lcom/truecaller/surveys/data/entities/Question$FreeText;", "Lcom/truecaller/surveys/data/entities/Question$Rating;", "surveys_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Question.class */
public abstract class Question {
    public static final C4553a Companion = new C4553a(null);

    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018�� )2\u00020\u0001:\u0002*+B/\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\t\u0012\u0006\u0010\u0011\u001a\u00020\t¢\u0006\u0004\b#\u0010$BK\b\u0017\u0012\u0006\u0010%\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\b\u0010'\u001a\u0004\u0018\u00010&¢\u0006\u0004\b#\u0010(J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J\u0010\u0010\n\u001a\u00020\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\tHÆ\u0003¢\u0006\u0004\b\f\u0010\u000bJB\u0010\u0012\u001a\u00020��2\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\t2\b\b\u0002\u0010\u0011\u001a\u00020\tHÆ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0007J\u0010\u0010\u0015\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0004J\u001a\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aR\u001c\u0010\u000f\u001a\u00020\u00058\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001b\u001a\u0004\b\u001c\u0010\u0007R\u001c\u0010\u000e\u001a\u00020\u00058\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u001b\u001a\u0004\b\u001d\u0010\u0007R\u0019\u0010\u0010\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001e\u001a\u0004\b\u001f\u0010\u000bR\u001c\u0010\r\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010 \u001a\u0004\b!\u0010\u0004R\u0019\u0010\u0011\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u001e\u001a\u0004\b\"\u0010\u000b¨\u0006,"}, d2 = {"Lcom/truecaller/surveys/data/entities/Question$Binary;", "Lcom/truecaller/surveys/data/entities/Question;", "", "component1", "()I", "", "component2", "()Ljava/lang/String;", "component3", "Lcom/truecaller/surveys/data/entities/Choice;", "component4", "()Lcom/truecaller/surveys/data/entities/Choice;", "component5", "id", "headerMessage", "message", "choiceTrue", "choiceFalse", "copy", "(ILjava/lang/String;Ljava/lang/String;Lcom/truecaller/surveys/data/entities/Choice;Lcom/truecaller/surveys/data/entities/Choice;)Lcom/truecaller/surveys/data/entities/Question$Binary;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getMessage", "getHeaderMessage", "Lcom/truecaller/surveys/data/entities/Choice;", "getChoiceTrue", "I", "getId", "getChoiceFalse", "<init>", "(ILjava/lang/String;Ljava/lang/String;Lcom/truecaller/surveys/data/entities/Choice;Lcom/truecaller/surveys/data/entities/Choice;)V", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(IILjava/lang/String;Ljava/lang/String;Lcom/truecaller/surveys/data/entities/Choice;Lcom/truecaller/surveys/data/entities/Choice;Lq3/b/k/t;)V", "Companion", "a", C22021b.f61237c, "surveys_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Question$Binary.class */
    public static final class Binary extends Question {
        public static final C4546b Companion = new C4546b(null);
        private final Choice choiceFalse;
        private final Choice choiceTrue;
        private final String headerMessage;

        /* renamed from: id */
        private final int f15073id;
        private final String message;

        /* renamed from: com.truecaller.surveys.data.entities.Question$Binary$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Question$Binary$a.class */
        public static final class C4545a implements f<Binary> {

            /* renamed from: a */
            public static final C4545a f15074a;

            /* renamed from: b */
            public static final /* synthetic */ d f15075b;

            static {
                C4545a c4545a = new C4545a();
                f15074a = c4545a;
                p pVar = new p("com.truecaller.surveys.data.entities.Question.Binary", c4545a, 5);
                pVar.g("id", false);
                pVar.g("headerMessage", false);
                pVar.g("message", false);
                pVar.g("choiceTrue", false);
                pVar.g("choiceFalse", false);
                f15075b = pVar;
            }

            /* renamed from: a */
            public d m34687a() {
                return f15075b;
            }

            /* renamed from: b */
            public void m34686b(e eVar, Object obj) {
                Binary binary = (Binary) obj;
                l.e(eVar, "encoder");
                l.e(binary, "value");
                d dVar = f15075b;
                c a = eVar.a(dVar);
                Binary.write$Self(binary, a, dVar);
                a.b(dVar);
            }

            /* renamed from: c */
            public b<?>[] m34685c() {
                return q.a;
            }

            /* renamed from: d */
            public Object m34684d(q3.b.j.d dVar) {
                int i;
                Choice choice;
                String str;
                String str2;
                int i2;
                Choice choice2;
                l.e(dVar, "decoder");
                d dVar2 = f15075b;
                q3.b.j.b a = dVar.a(dVar2);
                if (!a.j()) {
                    Choice choice3 = null;
                    str2 = null;
                    String str3 = null;
                    Choice choice4 = null;
                    i2 = 0;
                    int i3 = 0;
                    while (true) {
                        i = i3;
                        int q = a.q(dVar2);
                        if (q == -1) {
                            String str4 = str3;
                            choice = choice4;
                            choice2 = choice3;
                            str = str4;
                            break;
                        } else if (q == 0) {
                            i2 = a.e(dVar2, 0);
                            i3 = i | 1;
                        } else if (q == 1) {
                            str2 = a.h(dVar2, 1);
                            i3 = i | 2;
                        } else if (q == 2) {
                            str3 = a.h(dVar2, 2);
                            i3 = i | 4;
                        } else if (q == 3) {
                            choice3 = (Choice) a.l(dVar2, 3, Choice.C4543a.f15071a, choice3);
                            i3 = i | 8;
                        } else if (q != 4) {
                            throw new h(q);
                        } else {
                            choice4 = (Choice) a.l(dVar2, 4, Choice.C4543a.f15071a, choice4);
                            i3 = i | 16;
                        }
                    }
                } else {
                    i2 = a.e(dVar2, 0);
                    str2 = a.h(dVar2, 1);
                    str = a.h(dVar2, 2);
                    Choice.C4543a c4543a = Choice.C4543a.f15071a;
                    choice2 = (Choice) a.k(dVar2, 3, c4543a);
                    choice = (Choice) a.k(dVar2, 4, c4543a);
                    i = Integer.MAX_VALUE;
                }
                a.b(dVar2);
                return new Binary(i, i2, str2, str, choice2, choice, null);
            }

            /* renamed from: e */
            public b<?>[] m34683e() {
                b<?> bVar = g.b;
                b<?> bVar2 = u.b;
                b<?> bVar3 = Choice.C4543a.f15071a;
                return new b[]{bVar, bVar2, bVar2, bVar3, bVar3};
            }
        }

        /* renamed from: com.truecaller.surveys.data.entities.Question$Binary$b */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Question$Binary$b.class */
        public static final class C4546b {
            public C4546b(s1.z.c.f fVar) {
            }
        }

        public /* synthetic */ Binary(int i, int i2, String str, String str2, Choice choice, Choice choice2, t tVar) {
            super(i, null);
            if ((i & 1) != 0) {
                this.f15073id = i2;
                if ((i & 2) == 0) {
                    throw new q3.b.c("headerMessage");
                }
                this.headerMessage = str;
                if ((i & 4) == 0) {
                    throw new q3.b.c("message");
                }
                this.message = str2;
                if ((i & 8) == 0) {
                    throw new q3.b.c("choiceTrue");
                }
                this.choiceTrue = choice;
                if ((i & 16) == 0) {
                    throw new q3.b.c("choiceFalse");
                }
                this.choiceFalse = choice2;
                return;
            }
            throw new q3.b.c("id");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Binary(int i, String str, String str2, Choice choice, Choice choice2) {
            super(null);
            l.e(str, "headerMessage");
            l.e(str2, "message");
            l.e(choice, "choiceTrue");
            l.e(choice2, "choiceFalse");
            this.f15073id = i;
            this.headerMessage = str;
            this.message = str2;
            this.choiceTrue = choice;
            this.choiceFalse = choice2;
        }

        public static /* synthetic */ Binary copy$default(Binary binary, int i, String str, String str2, Choice choice, Choice choice2, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = binary.getId();
            }
            if ((i2 & 2) != 0) {
                str = binary.getHeaderMessage();
            }
            if ((i2 & 4) != 0) {
                str2 = binary.getMessage();
            }
            if ((i2 & 8) != 0) {
                choice = binary.choiceTrue;
            }
            if ((i2 & 16) != 0) {
                choice2 = binary.choiceFalse;
            }
            return binary.copy(i, str, str2, choice, choice2);
        }

        public static final void write$Self(Binary binary, c cVar, d dVar) {
            l.e(binary, "self");
            l.e(cVar, "output");
            l.e(dVar, "serialDesc");
            Question.write$Self(binary, cVar, dVar);
            cVar.f(dVar, 0, binary.getId());
            cVar.h(dVar, 1, binary.getHeaderMessage());
            cVar.h(dVar, 2, binary.getMessage());
            Choice.C4543a c4543a = Choice.C4543a.f15071a;
            cVar.q(dVar, 3, c4543a, binary.choiceTrue);
            cVar.q(dVar, 4, c4543a, binary.choiceFalse);
        }

        public final int component1() {
            return getId();
        }

        public final String component2() {
            return getHeaderMessage();
        }

        public final String component3() {
            return getMessage();
        }

        public final Choice component4() {
            return this.choiceTrue;
        }

        public final Choice component5() {
            return this.choiceFalse;
        }

        public final Binary copy(int i, String str, String str2, Choice choice, Choice choice2) {
            l.e(str, "headerMessage");
            l.e(str2, "message");
            l.e(choice, "choiceTrue");
            l.e(choice2, "choiceFalse");
            return new Binary(i, str, str2, choice, choice2);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof Binary)) {
                    return false;
                }
                Binary binary = (Binary) obj;
                return getId() == binary.getId() && l.a(getHeaderMessage(), binary.getHeaderMessage()) && l.a(getMessage(), binary.getMessage()) && l.a(this.choiceTrue, binary.choiceTrue) && l.a(this.choiceFalse, binary.choiceFalse);
            }
            return true;
        }

        public final Choice getChoiceFalse() {
            return this.choiceFalse;
        }

        public final Choice getChoiceTrue() {
            return this.choiceTrue;
        }

        @Override // com.truecaller.surveys.data.entities.Question
        public String getHeaderMessage() {
            return this.headerMessage;
        }

        @Override // com.truecaller.surveys.data.entities.Question
        public int getId() {
            return this.f15073id;
        }

        @Override // com.truecaller.surveys.data.entities.Question
        public String getMessage() {
            return this.message;
        }

        public int hashCode() {
            int id = getId();
            String headerMessage = getHeaderMessage();
            int i = 0;
            int hashCode = headerMessage != null ? headerMessage.hashCode() : 0;
            String message = getMessage();
            int hashCode2 = message != null ? message.hashCode() : 0;
            Choice choice = this.choiceTrue;
            int hashCode3 = choice != null ? choice.hashCode() : 0;
            Choice choice2 = this.choiceFalse;
            if (choice2 != null) {
                i = choice2.hashCode();
            }
            return (((((((id * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Binary(id=");
            m8728C.append(getId());
            m8728C.append(", headerMessage=");
            m8728C.append(getHeaderMessage());
            m8728C.append(", message=");
            m8728C.append(getMessage());
            m8728C.append(", choiceTrue=");
            m8728C.append(this.choiceTrue);
            m8728C.append(", choiceFalse=");
            m8728C.append(this.choiceFalse);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018�� +2\u00020\u0001:\u0002,-B9\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0005\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b%\u0010&BU\b\u0017\u0012\u0006\u0010'\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010)\u001a\u0004\u0018\u00010(¢\u0006\u0004\b%\u0010*J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\t\u0010\u0007J\u0010\u0010\n\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\n\u0010\u0007J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJN\u0010\u0013\u001a\u00020��2\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u00052\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0007J\u0010\u0010\u0016\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0004J\u001a\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bR\u0019\u0010\u0011\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u001c\u001a\u0004\b\u001d\u0010\u0007R\u001c\u0010\u000e\u001a\u00020\u00058\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u001c\u001a\u0004\b\u001e\u0010\u0007R\u001c\u0010\u000f\u001a\u00020\u00058\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001c\u001a\u0004\b\u001f\u0010\u0007R\u0019\u0010\u0010\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001c\u001a\u0004\b \u0010\u0007R\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010!\u001a\u0004\b\"\u0010\fR\u001c\u0010\r\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010#\u001a\u0004\b$\u0010\u0004¨\u0006."}, d2 = {"Lcom/truecaller/surveys/data/entities/Question$FreeText;", "Lcom/truecaller/surveys/data/entities/Question;", "", "component1", "()I", "", "component2", "()Ljava/lang/String;", "component3", "component4", "component5", "component6", "()Ljava/lang/Integer;", "id", "headerMessage", "message", "hint", "actionLabel", "followupQuestionId", "copy", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/truecaller/surveys/data/entities/Question$FreeText;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getActionLabel", "getHeaderMessage", "getMessage", "getHint", "Ljava/lang/Integer;", "getFollowupQuestionId", "I", "getId", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lq3/b/k/t;)V", "Companion", "a", C22021b.f61237c, "surveys_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Question$FreeText.class */
    public static final class FreeText extends Question {
        public static final C4548b Companion = new C4548b(null);
        private final String actionLabel;
        private final Integer followupQuestionId;
        private final String headerMessage;
        private final String hint;

        /* renamed from: id */
        private final int f15076id;
        private final String message;

        /* renamed from: com.truecaller.surveys.data.entities.Question$FreeText$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Question$FreeText$a.class */
        public static final class C4547a implements f<FreeText> {

            /* renamed from: a */
            public static final C4547a f15077a;

            /* renamed from: b */
            public static final /* synthetic */ d f15078b;

            static {
                C4547a c4547a = new C4547a();
                f15077a = c4547a;
                p pVar = new p("com.truecaller.surveys.data.entities.Question.FreeText", c4547a, 6);
                pVar.g("id", false);
                pVar.g("headerMessage", false);
                pVar.g("message", false);
                pVar.g("hint", false);
                pVar.g("actionLabel", false);
                pVar.g("followupQuestionId", false);
                f15078b = pVar;
            }

            /* renamed from: a */
            public d m34682a() {
                return f15078b;
            }

            /* renamed from: b */
            public void m34681b(e eVar, Object obj) {
                FreeText freeText = (FreeText) obj;
                l.e(eVar, "encoder");
                l.e(freeText, "value");
                d dVar = f15078b;
                c a = eVar.a(dVar);
                FreeText.write$Self(freeText, a, dVar);
                a.b(dVar);
            }

            /* renamed from: c */
            public b<?>[] m34680c() {
                return q.a;
            }

            /* renamed from: d */
            public Object m34679d(q3.b.j.d dVar) {
                String str;
                int i;
                String str2;
                String str3;
                String str4;
                int i2;
                Integer num;
                l.e(dVar, "decoder");
                d dVar2 = f15078b;
                q3.b.j.b a = dVar.a(dVar2);
                if (a.j()) {
                    i2 = a.e(dVar2, 0);
                    str4 = a.h(dVar2, 1);
                    str3 = a.h(dVar2, 2);
                    String h = a.h(dVar2, 3);
                    String h2 = a.h(dVar2, 4);
                    num = (Integer) a.r(dVar2, 5, g.b);
                    i = Integer.MAX_VALUE;
                    str = h;
                    str2 = h2;
                } else {
                    Integer num2 = null;
                    String str5 = null;
                    str4 = null;
                    String str6 = null;
                    String str7 = null;
                    int i3 = 0;
                    int i4 = 0;
                    while (true) {
                        int i5 = i4;
                        int q = a.q(dVar2);
                        switch (q) {
                            case -1:
                                int i6 = i3;
                                String str8 = str6;
                                str2 = str7;
                                i = i5;
                                num = num2;
                                str = str5;
                                str3 = str8;
                                i2 = i6;
                                break;
                            case 0:
                                i3 = a.e(dVar2, 0);
                                i4 = i5 | 1;
                                break;
                            case 1:
                                str4 = a.h(dVar2, 1);
                                i4 = i5 | 2;
                                break;
                            case 2:
                                str6 = a.h(dVar2, 2);
                                i4 = i5 | 4;
                                break;
                            case 3:
                                str5 = a.h(dVar2, 3);
                                i4 = i5 | 8;
                                break;
                            case 4:
                                str7 = a.h(dVar2, 4);
                                i4 = i5 | 16;
                                break;
                            case 5:
                                num2 = (Integer) a.i(dVar2, 5, g.b, num2);
                                i4 = i5 | 32;
                                break;
                            default:
                                throw new h(q);
                        }
                    }
                }
                a.b(dVar2);
                return new FreeText(i, i2, str4, str3, str, str2, num, null);
            }

            /* renamed from: e */
            public b<?>[] m34678e() {
                b<?> bVar = g.b;
                b<?> bVar2 = u.b;
                return new b[]{bVar, bVar2, bVar2, bVar2, bVar2, s1.a.a.a.v0.f.d.r1(bVar)};
            }
        }

        /* renamed from: com.truecaller.surveys.data.entities.Question$FreeText$b */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Question$FreeText$b.class */
        public static final class C4548b {
            public C4548b(s1.z.c.f fVar) {
            }
        }

        public /* synthetic */ FreeText(int i, int i2, String str, String str2, String str3, String str4, Integer num, t tVar) {
            super(i, null);
            if ((i & 1) != 0) {
                this.f15076id = i2;
                if ((i & 2) == 0) {
                    throw new q3.b.c("headerMessage");
                }
                this.headerMessage = str;
                if ((i & 4) == 0) {
                    throw new q3.b.c("message");
                }
                this.message = str2;
                if ((i & 8) == 0) {
                    throw new q3.b.c("hint");
                }
                this.hint = str3;
                if ((i & 16) == 0) {
                    throw new q3.b.c("actionLabel");
                }
                this.actionLabel = str4;
                if ((i & 32) == 0) {
                    throw new q3.b.c("followupQuestionId");
                }
                this.followupQuestionId = num;
                return;
            }
            throw new q3.b.c("id");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FreeText(int i, String str, String str2, String str3, String str4, Integer num) {
            super(null);
            C22128a.m8699J0(str, "headerMessage", str2, "message", str3, "hint", str4, "actionLabel");
            this.f15076id = i;
            this.headerMessage = str;
            this.message = str2;
            this.hint = str3;
            this.actionLabel = str4;
            this.followupQuestionId = num;
        }

        public static /* synthetic */ FreeText copy$default(FreeText freeText, int i, String str, String str2, String str3, String str4, Integer num, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = freeText.getId();
            }
            if ((i2 & 2) != 0) {
                str = freeText.getHeaderMessage();
            }
            if ((i2 & 4) != 0) {
                str2 = freeText.getMessage();
            }
            if ((i2 & 8) != 0) {
                str3 = freeText.hint;
            }
            if ((i2 & 16) != 0) {
                str4 = freeText.actionLabel;
            }
            if ((i2 & 32) != 0) {
                num = freeText.followupQuestionId;
            }
            return freeText.copy(i, str, str2, str3, str4, num);
        }

        public static final void write$Self(FreeText freeText, c cVar, d dVar) {
            l.e(freeText, "self");
            l.e(cVar, "output");
            l.e(dVar, "serialDesc");
            Question.write$Self(freeText, cVar, dVar);
            cVar.f(dVar, 0, freeText.getId());
            cVar.h(dVar, 1, freeText.getHeaderMessage());
            cVar.h(dVar, 2, freeText.getMessage());
            cVar.h(dVar, 3, freeText.hint);
            cVar.h(dVar, 4, freeText.actionLabel);
            cVar.l(dVar, 5, g.b, freeText.followupQuestionId);
        }

        public final int component1() {
            return getId();
        }

        public final String component2() {
            return getHeaderMessage();
        }

        public final String component3() {
            return getMessage();
        }

        public final String component4() {
            return this.hint;
        }

        public final String component5() {
            return this.actionLabel;
        }

        public final Integer component6() {
            return this.followupQuestionId;
        }

        public final FreeText copy(int i, String str, String str2, String str3, String str4, Integer num) {
            l.e(str, "headerMessage");
            l.e(str2, "message");
            l.e(str3, "hint");
            l.e(str4, "actionLabel");
            return new FreeText(i, str, str2, str3, str4, num);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof FreeText)) {
                    return false;
                }
                FreeText freeText = (FreeText) obj;
                return getId() == freeText.getId() && l.a(getHeaderMessage(), freeText.getHeaderMessage()) && l.a(getMessage(), freeText.getMessage()) && l.a(this.hint, freeText.hint) && l.a(this.actionLabel, freeText.actionLabel) && l.a(this.followupQuestionId, freeText.followupQuestionId);
            }
            return true;
        }

        public final String getActionLabel() {
            return this.actionLabel;
        }

        public final Integer getFollowupQuestionId() {
            return this.followupQuestionId;
        }

        @Override // com.truecaller.surveys.data.entities.Question
        public String getHeaderMessage() {
            return this.headerMessage;
        }

        public final String getHint() {
            return this.hint;
        }

        @Override // com.truecaller.surveys.data.entities.Question
        public int getId() {
            return this.f15076id;
        }

        @Override // com.truecaller.surveys.data.entities.Question
        public String getMessage() {
            return this.message;
        }

        public int hashCode() {
            int id = getId();
            String headerMessage = getHeaderMessage();
            int i = 0;
            int hashCode = headerMessage != null ? headerMessage.hashCode() : 0;
            String message = getMessage();
            int hashCode2 = message != null ? message.hashCode() : 0;
            String str = this.hint;
            int hashCode3 = str != null ? str.hashCode() : 0;
            String str2 = this.actionLabel;
            int hashCode4 = str2 != null ? str2.hashCode() : 0;
            Integer num = this.followupQuestionId;
            if (num != null) {
                i = num.hashCode();
            }
            return (((((((((id * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("FreeText(id=");
            m8728C.append(getId());
            m8728C.append(", headerMessage=");
            m8728C.append(getHeaderMessage());
            m8728C.append(", message=");
            m8728C.append(getMessage());
            m8728C.append(", hint=");
            m8728C.append(this.hint);
            m8728C.append(", actionLabel=");
            m8728C.append(this.actionLabel);
            m8728C.append(", followupQuestionId=");
            return C22128a.m8689L2(m8728C, this.followupQuestionId, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018�� '2\u00020\u0001:\u0002()B-\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b!\u0010\"BG\b\u0017\u0012\u0006\u0010#\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\b\u0010%\u001a\u0004\u0018\u00010$¢\u0006\u0004\b!\u0010&J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ>\u0010\u0011\u001a\u00020��2\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u00052\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0007J\u0010\u0010\u0014\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0004J\u001a\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019R\u001c\u0010\r\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010\u001a\u001a\u0004\b\u001b\u0010\u0004R\u001f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001c\u001a\u0004\b\u001d\u0010\fR\u001c\u0010\u000f\u001a\u00020\u00058\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001e\u001a\u0004\b\u001f\u0010\u0007R\u001c\u0010\u000e\u001a\u00020\u00058\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u001e\u001a\u0004\b \u0010\u0007¨\u0006*"}, d2 = {"Lcom/truecaller/surveys/data/entities/Question$Rating;", "Lcom/truecaller/surveys/data/entities/Question;", "", "component1", "()I", "", "component2", "()Ljava/lang/String;", "component3", "", "Lcom/truecaller/surveys/data/entities/Choice;", "component4", "()Ljava/util/List;", "id", "headerMessage", "message", "choices", "copy", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/surveys/data/entities/Question$Rating;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getId", "Ljava/util/List;", "getChoices", "Ljava/lang/String;", "getMessage", "getHeaderMessage", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lq3/b/k/t;)V", "Companion", "a", C22021b.f61237c, "surveys_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Question$Rating.class */
    public static final class Rating extends Question {
        public static final C4550b Companion = new C4550b(null);
        private final List<Choice> choices;
        private final String headerMessage;

        /* renamed from: id */
        private final int f15079id;
        private final String message;

        /* renamed from: com.truecaller.surveys.data.entities.Question$Rating$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Question$Rating$a.class */
        public static final class C4549a implements f<Rating> {

            /* renamed from: a */
            public static final C4549a f15080a;

            /* renamed from: b */
            public static final /* synthetic */ d f15081b;

            static {
                C4549a c4549a = new C4549a();
                f15080a = c4549a;
                p pVar = new p("com.truecaller.surveys.data.entities.Question.Rating", c4549a, 4);
                pVar.g("id", false);
                pVar.g("headerMessage", false);
                pVar.g("message", false);
                pVar.g("choices", false);
                f15081b = pVar;
            }

            /* renamed from: a */
            public d m34677a() {
                return f15081b;
            }

            /* renamed from: b */
            public void m34676b(e eVar, Object obj) {
                Rating rating = (Rating) obj;
                l.e(eVar, "encoder");
                l.e(rating, "value");
                d dVar = f15081b;
                c a = eVar.a(dVar);
                Rating.write$Self(rating, a, dVar);
                a.b(dVar);
            }

            /* renamed from: c */
            public b<?>[] m34675c() {
                return q.a;
            }

            /* renamed from: d */
            public Object m34674d(q3.b.j.d dVar) {
                int i;
                String str;
                String str2;
                int i2;
                List list;
                l.e(dVar, "decoder");
                d dVar2 = f15081b;
                q3.b.j.b a = dVar.a(dVar2);
                if (!a.j()) {
                    List list2 = null;
                    str2 = null;
                    String str3 = null;
                    int i3 = 0;
                    int i4 = 0;
                    while (true) {
                        int i5 = i4;
                        int q = a.q(dVar2);
                        if (q == -1) {
                            int i6 = i3;
                            String str4 = str3;
                            i = i5;
                            list = list2;
                            str = str4;
                            i2 = i6;
                            break;
                        } else if (q == 0) {
                            i3 = a.e(dVar2, 0);
                            i4 = i5 | 1;
                        } else if (q == 1) {
                            str2 = a.h(dVar2, 1);
                            i4 = i5 | 2;
                        } else if (q == 2) {
                            str3 = a.h(dVar2, 2);
                            i4 = i5 | 4;
                        } else if (q != 3) {
                            throw new h(q);
                        } else {
                            list2 = (List) a.l(dVar2, 3, new q3.b.k.d(Choice.C4543a.f15071a), list2);
                            i4 = i5 | 8;
                        }
                    }
                } else {
                    i2 = a.e(dVar2, 0);
                    str2 = a.h(dVar2, 1);
                    str = a.h(dVar2, 2);
                    list = (List) a.k(dVar2, 3, new q3.b.k.d(Choice.C4543a.f15071a));
                    i = Integer.MAX_VALUE;
                }
                a.b(dVar2);
                return new Rating(i, i2, str2, str, list, null);
            }

            /* renamed from: e */
            public b<?>[] m34673e() {
                b<?> bVar = g.b;
                b<?> bVar2 = u.b;
                return new b[]{bVar, bVar2, bVar2, new q3.b.k.d(Choice.C4543a.f15071a)};
            }
        }

        /* renamed from: com.truecaller.surveys.data.entities.Question$Rating$b */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Question$Rating$b.class */
        public static final class C4550b {
            public C4550b(s1.z.c.f fVar) {
            }
        }

        public /* synthetic */ Rating(int i, int i2, String str, String str2, List<Choice> list, t tVar) {
            super(i, null);
            if ((i & 1) != 0) {
                this.f15079id = i2;
                if ((i & 2) == 0) {
                    throw new q3.b.c("headerMessage");
                }
                this.headerMessage = str;
                if ((i & 4) == 0) {
                    throw new q3.b.c("message");
                }
                this.message = str2;
                if ((i & 8) == 0) {
                    throw new q3.b.c("choices");
                }
                this.choices = list;
                return;
            }
            throw new q3.b.c("id");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Rating(int i, String str, String str2, List<Choice> list) {
            super(null);
            l.e(str, "headerMessage");
            l.e(str2, "message");
            l.e(list, "choices");
            this.f15079id = i;
            this.headerMessage = str;
            this.message = str2;
            this.choices = list;
        }

        public static /* synthetic */ Rating copy$default(Rating rating, int i, String str, String str2, List list, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = rating.getId();
            }
            if ((i2 & 2) != 0) {
                str = rating.getHeaderMessage();
            }
            if ((i2 & 4) != 0) {
                str2 = rating.getMessage();
            }
            if ((i2 & 8) != 0) {
                list = rating.choices;
            }
            return rating.copy(i, str, str2, list);
        }

        public static final void write$Self(Rating rating, c cVar, d dVar) {
            l.e(rating, "self");
            l.e(cVar, "output");
            l.e(dVar, "serialDesc");
            Question.write$Self(rating, cVar, dVar);
            cVar.f(dVar, 0, rating.getId());
            cVar.h(dVar, 1, rating.getHeaderMessage());
            cVar.h(dVar, 2, rating.getMessage());
            cVar.q(dVar, 3, new q3.b.k.d(Choice.C4543a.f15071a), rating.choices);
        }

        public final int component1() {
            return getId();
        }

        public final String component2() {
            return getHeaderMessage();
        }

        public final String component3() {
            return getMessage();
        }

        public final List<Choice> component4() {
            return this.choices;
        }

        public final Rating copy(int i, String str, String str2, List<Choice> list) {
            l.e(str, "headerMessage");
            l.e(str2, "message");
            l.e(list, "choices");
            return new Rating(i, str, str2, list);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof Rating)) {
                    return false;
                }
                Rating rating = (Rating) obj;
                return getId() == rating.getId() && l.a(getHeaderMessage(), rating.getHeaderMessage()) && l.a(getMessage(), rating.getMessage()) && l.a(this.choices, rating.choices);
            }
            return true;
        }

        public final List<Choice> getChoices() {
            return this.choices;
        }

        @Override // com.truecaller.surveys.data.entities.Question
        public String getHeaderMessage() {
            return this.headerMessage;
        }

        @Override // com.truecaller.surveys.data.entities.Question
        public int getId() {
            return this.f15079id;
        }

        @Override // com.truecaller.surveys.data.entities.Question
        public String getMessage() {
            return this.message;
        }

        public int hashCode() {
            int id = getId();
            String headerMessage = getHeaderMessage();
            int i = 0;
            int hashCode = headerMessage != null ? headerMessage.hashCode() : 0;
            String message = getMessage();
            int hashCode2 = message != null ? message.hashCode() : 0;
            List<Choice> list = this.choices;
            if (list != null) {
                i = list.hashCode();
            }
            return (((((id * 31) + hashCode) * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Rating(id=");
            m8728C.append(getId());
            m8728C.append(", headerMessage=");
            m8728C.append(getHeaderMessage());
            m8728C.append(", message=");
            m8728C.append(getMessage());
            m8728C.append(", choices=");
            return C22128a.m8602l(m8728C, this.choices, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018�� '2\u00020\u0001:\u0002()B-\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b!\u0010\"BG\b\u0017\u0012\u0006\u0010#\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\b\u0010%\u001a\u0004\u0018\u00010$¢\u0006\u0004\b!\u0010&J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ>\u0010\u0011\u001a\u00020��2\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u00052\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0007J\u0010\u0010\u0014\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0004J\u001a\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019R\u001c\u0010\u000e\u001a\u00020\u00058\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u001a\u001a\u0004\b\u001b\u0010\u0007R\u001c\u0010\r\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010\u001c\u001a\u0004\b\u001d\u0010\u0004R\u001f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001e\u001a\u0004\b\u001f\u0010\fR\u001c\u0010\u000f\u001a\u00020\u00058\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001a\u001a\u0004\b \u0010\u0007¨\u0006*"}, d2 = {"Lcom/truecaller/surveys/data/entities/Question$SingleChoice;", "Lcom/truecaller/surveys/data/entities/Question;", "", "component1", "()I", "", "component2", "()Ljava/lang/String;", "component3", "", "Lcom/truecaller/surveys/data/entities/Choice;", "component4", "()Ljava/util/List;", "id", "headerMessage", "message", "choices", "copy", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/surveys/data/entities/Question$SingleChoice;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getHeaderMessage", "I", "getId", "Ljava/util/List;", "getChoices", "getMessage", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lq3/b/k/t;)V", "Companion", "a", C22021b.f61237c, "surveys_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Question$SingleChoice.class */
    public static final class SingleChoice extends Question {
        public static final C4552b Companion = new C4552b(null);
        private final List<Choice> choices;
        private final String headerMessage;

        /* renamed from: id */
        private final int f15082id;
        private final String message;

        /* renamed from: com.truecaller.surveys.data.entities.Question$SingleChoice$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Question$SingleChoice$a.class */
        public static final class C4551a implements f<SingleChoice> {

            /* renamed from: a */
            public static final C4551a f15083a;

            /* renamed from: b */
            public static final /* synthetic */ d f15084b;

            static {
                C4551a c4551a = new C4551a();
                f15083a = c4551a;
                p pVar = new p("com.truecaller.surveys.data.entities.Question.SingleChoice", c4551a, 4);
                pVar.g("id", false);
                pVar.g("headerMessage", false);
                pVar.g("message", false);
                pVar.g("choices", false);
                f15084b = pVar;
            }

            /* renamed from: a */
            public d m34672a() {
                return f15084b;
            }

            /* renamed from: b */
            public void m34671b(e eVar, Object obj) {
                SingleChoice singleChoice = (SingleChoice) obj;
                l.e(eVar, "encoder");
                l.e(singleChoice, "value");
                d dVar = f15084b;
                c a = eVar.a(dVar);
                SingleChoice.write$Self(singleChoice, a, dVar);
                a.b(dVar);
            }

            /* renamed from: c */
            public b<?>[] m34670c() {
                return q.a;
            }

            /* renamed from: d */
            public Object m34669d(q3.b.j.d dVar) {
                int i;
                String str;
                String str2;
                int i2;
                List list;
                l.e(dVar, "decoder");
                d dVar2 = f15084b;
                q3.b.j.b a = dVar.a(dVar2);
                if (!a.j()) {
                    List list2 = null;
                    str2 = null;
                    String str3 = null;
                    i2 = 0;
                    int i3 = 0;
                    while (true) {
                        i = i3;
                        int q = a.q(dVar2);
                        if (q == -1) {
                            String str4 = str3;
                            list = list2;
                            str = str4;
                            break;
                        } else if (q == 0) {
                            i2 = a.e(dVar2, 0);
                            i3 = i | 1;
                        } else if (q == 1) {
                            str2 = a.h(dVar2, 1);
                            i3 = i | 2;
                        } else if (q == 2) {
                            str3 = a.h(dVar2, 2);
                            i3 = i | 4;
                        } else if (q != 3) {
                            throw new h(q);
                        } else {
                            list2 = (List) a.l(dVar2, 3, new q3.b.k.d(Choice.C4543a.f15071a), list2);
                            i3 = i | 8;
                        }
                    }
                } else {
                    i2 = a.e(dVar2, 0);
                    str2 = a.h(dVar2, 1);
                    str = a.h(dVar2, 2);
                    list = (List) a.k(dVar2, 3, new q3.b.k.d(Choice.C4543a.f15071a));
                    i = Integer.MAX_VALUE;
                }
                a.b(dVar2);
                return new SingleChoice(i, i2, str2, str, list, null);
            }

            /* renamed from: e */
            public b<?>[] m34668e() {
                b<?> bVar = g.b;
                b<?> bVar2 = u.b;
                return new b[]{bVar, bVar2, bVar2, new q3.b.k.d(Choice.C4543a.f15071a)};
            }
        }

        /* renamed from: com.truecaller.surveys.data.entities.Question$SingleChoice$b */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Question$SingleChoice$b.class */
        public static final class C4552b {
            public C4552b(s1.z.c.f fVar) {
            }
        }

        public /* synthetic */ SingleChoice(int i, int i2, String str, String str2, List<Choice> list, t tVar) {
            super(i, null);
            if ((i & 1) != 0) {
                this.f15082id = i2;
                if ((i & 2) == 0) {
                    throw new q3.b.c("headerMessage");
                }
                this.headerMessage = str;
                if ((i & 4) == 0) {
                    throw new q3.b.c("message");
                }
                this.message = str2;
                if ((i & 8) == 0) {
                    throw new q3.b.c("choices");
                }
                this.choices = list;
                return;
            }
            throw new q3.b.c("id");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SingleChoice(int i, String str, String str2, List<Choice> list) {
            super(null);
            l.e(str, "headerMessage");
            l.e(str2, "message");
            l.e(list, "choices");
            this.f15082id = i;
            this.headerMessage = str;
            this.message = str2;
            this.choices = list;
        }

        public static /* synthetic */ SingleChoice copy$default(SingleChoice singleChoice, int i, String str, String str2, List list, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = singleChoice.getId();
            }
            if ((i2 & 2) != 0) {
                str = singleChoice.getHeaderMessage();
            }
            if ((i2 & 4) != 0) {
                str2 = singleChoice.getMessage();
            }
            if ((i2 & 8) != 0) {
                list = singleChoice.choices;
            }
            return singleChoice.copy(i, str, str2, list);
        }

        public static final void write$Self(SingleChoice singleChoice, c cVar, d dVar) {
            l.e(singleChoice, "self");
            l.e(cVar, "output");
            l.e(dVar, "serialDesc");
            Question.write$Self(singleChoice, cVar, dVar);
            cVar.f(dVar, 0, singleChoice.getId());
            cVar.h(dVar, 1, singleChoice.getHeaderMessage());
            cVar.h(dVar, 2, singleChoice.getMessage());
            cVar.q(dVar, 3, new q3.b.k.d(Choice.C4543a.f15071a), singleChoice.choices);
        }

        public final int component1() {
            return getId();
        }

        public final String component2() {
            return getHeaderMessage();
        }

        public final String component3() {
            return getMessage();
        }

        public final List<Choice> component4() {
            return this.choices;
        }

        public final SingleChoice copy(int i, String str, String str2, List<Choice> list) {
            l.e(str, "headerMessage");
            l.e(str2, "message");
            l.e(list, "choices");
            return new SingleChoice(i, str, str2, list);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof SingleChoice)) {
                    return false;
                }
                SingleChoice singleChoice = (SingleChoice) obj;
                return getId() == singleChoice.getId() && l.a(getHeaderMessage(), singleChoice.getHeaderMessage()) && l.a(getMessage(), singleChoice.getMessage()) && l.a(this.choices, singleChoice.choices);
            }
            return true;
        }

        public final List<Choice> getChoices() {
            return this.choices;
        }

        @Override // com.truecaller.surveys.data.entities.Question
        public String getHeaderMessage() {
            return this.headerMessage;
        }

        @Override // com.truecaller.surveys.data.entities.Question
        public int getId() {
            return this.f15082id;
        }

        @Override // com.truecaller.surveys.data.entities.Question
        public String getMessage() {
            return this.message;
        }

        public int hashCode() {
            int id = getId();
            String headerMessage = getHeaderMessage();
            int i = 0;
            int hashCode = headerMessage != null ? headerMessage.hashCode() : 0;
            String message = getMessage();
            int hashCode2 = message != null ? message.hashCode() : 0;
            List<Choice> list = this.choices;
            if (list != null) {
                i = list.hashCode();
            }
            return (((((id * 31) + hashCode) * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("SingleChoice(id=");
            m8728C.append(getId());
            m8728C.append(", headerMessage=");
            m8728C.append(getHeaderMessage());
            m8728C.append(", message=");
            m8728C.append(getMessage());
            m8728C.append(", choices=");
            return C22128a.m8602l(m8728C, this.choices, ")");
        }
    }

    /* renamed from: com.truecaller.surveys.data.entities.Question$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Question$a.class */
    public static final class C4553a {
        public C4553a(s1.z.c.f fVar) {
        }

        /* renamed from: a */
        public final b<Question> m34667a() {
            return new q3.b.e("com.truecaller.surveys.data.entities.Question", d0.a(Question.class), new s1.a.c[]{d0.a(Binary.class), d0.a(SingleChoice.class), d0.a(FreeText.class), d0.a(Rating.class)}, new b[]{Binary.C4545a.f15074a, SingleChoice.C4551a.f15083a, FreeText.C4547a.f15077a, Rating.C4549a.f15080a});
        }
    }

    private Question() {
    }

    public /* synthetic */ Question(int i, t tVar) {
    }

    public /* synthetic */ Question(s1.z.c.f fVar) {
        this();
    }

    public static final void write$Self(Question question, c cVar, d dVar) {
        l.e(question, "self");
        l.e(cVar, "output");
        l.e(dVar, "serialDesc");
    }

    public abstract String getHeaderMessage();

    public abstract int getId();

    public abstract String getMessage();
}
