package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/Phonemetadata.class */
public final class Phonemetadata {

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/Phonemetadata$NumberFormat.class */
    public static class NumberFormat implements Externalizable {
        private static final long serialVersionUID = 1;

        /* renamed from: i */
        private boolean f12298i;

        /* renamed from: l */
        private boolean f12301l;

        /* renamed from: f */
        private String f12295f = "";

        /* renamed from: g */
        private String f12296g = "";

        /* renamed from: h */
        private List<String> f12297h = new ArrayList();

        /* renamed from: j */
        private String f12299j = "";

        /* renamed from: k */
        private boolean f12300k = false;

        /* renamed from: m */
        private String f12302m = "";

        /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder.class */
        public static final class Builder extends NumberFormat {
        }

        /* renamed from: a */
        public String m7991a() {
            return this.f12302m;
        }

        /* renamed from: b */
        public String m7990b() {
            return this.f12296g;
        }

        /* renamed from: c */
        public String m7989c(int i) {
            return this.f12297h.get(i);
        }

        /* renamed from: d */
        public int m7988d() {
            return this.f12297h.size();
        }

        /* renamed from: e */
        public String m7987e() {
            return this.f12299j;
        }

        /* renamed from: f */
        public boolean m7986f() {
            return this.f12300k;
        }

        /* renamed from: g */
        public String m7985g() {
            return this.f12295f;
        }

        @Deprecated
        /* renamed from: h */
        public int m7984h() {
            return m7988d();
        }

        /* renamed from: i */
        public NumberFormat m7983i(String str) {
            this.f12301l = true;
            this.f12302m = str;
            return this;
        }

        /* renamed from: j */
        public NumberFormat m7982j(String str) {
            this.f12296g = str;
            return this;
        }

        /* renamed from: k */
        public NumberFormat m7981k(String str) {
            this.f12298i = true;
            this.f12299j = str;
            return this;
        }

        /* renamed from: l */
        public NumberFormat m7980l(boolean z) {
            this.f12300k = z;
            return this;
        }

        /* renamed from: m */
        public NumberFormat m7979m(String str) {
            this.f12295f = str;
            return this;
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) throws IOException {
            m7979m(objectInput.readUTF());
            m7982j(objectInput.readUTF());
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                this.f12297h.add(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                m7981k(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                m7983i(objectInput.readUTF());
            }
            m7980l(objectInput.readBoolean());
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeUTF(this.f12295f);
            objectOutput.writeUTF(this.f12296g);
            int h = m7984h();
            objectOutput.writeInt(h);
            for (int i = 0; i < h; i++) {
                objectOutput.writeUTF(this.f12297h.get(i));
            }
            objectOutput.writeBoolean(this.f12298i);
            if (this.f12298i) {
                objectOutput.writeUTF(this.f12299j);
            }
            objectOutput.writeBoolean(this.f12301l);
            if (this.f12301l) {
                objectOutput.writeUTF(this.f12302m);
            }
            objectOutput.writeBoolean(this.f12300k);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata.class */
    public static class PhoneMetadata implements Externalizable {
        private static final long serialVersionUID = 1;

        /* renamed from: B */
        private boolean f12304B;

        /* renamed from: D */
        private boolean f12306D;

        /* renamed from: F */
        private boolean f12308F;

        /* renamed from: H */
        private boolean f12310H;

        /* renamed from: J */
        private boolean f12312J;

        /* renamed from: L */
        private boolean f12314L;

        /* renamed from: Q */
        private boolean f12319Q;

        /* renamed from: S */
        private boolean f12321S;

        /* renamed from: U */
        private boolean f12323U;

        /* renamed from: W */
        private boolean f12325W;

        /* renamed from: Y */
        private boolean f12327Y;

        /* renamed from: e0 */
        private boolean f12333e0;

        /* renamed from: f */
        private boolean f12334f;

        /* renamed from: h */
        private boolean f12338h;

        /* renamed from: j */
        private boolean f12341j;

        /* renamed from: l */
        private boolean f12343l;

        /* renamed from: n */
        private boolean f12345n;

        /* renamed from: p */
        private boolean f12347p;

        /* renamed from: r */
        private boolean f12349r;

        /* renamed from: t */
        private boolean f12351t;

        /* renamed from: v */
        private boolean f12353v;

        /* renamed from: x */
        private boolean f12355x;

        /* renamed from: z */
        private boolean f12357z;

        /* renamed from: g */
        private PhoneNumberDesc f12336g = null;

        /* renamed from: i */
        private PhoneNumberDesc f12340i = null;

        /* renamed from: k */
        private PhoneNumberDesc f12342k = null;

        /* renamed from: m */
        private PhoneNumberDesc f12344m = null;

        /* renamed from: o */
        private PhoneNumberDesc f12346o = null;

        /* renamed from: q */
        private PhoneNumberDesc f12348q = null;

        /* renamed from: s */
        private PhoneNumberDesc f12350s = null;

        /* renamed from: u */
        private PhoneNumberDesc f12352u = null;

        /* renamed from: w */
        private PhoneNumberDesc f12354w = null;

        /* renamed from: y */
        private PhoneNumberDesc f12356y = null;

        /* renamed from: A */
        private PhoneNumberDesc f12303A = null;

        /* renamed from: C */
        private PhoneNumberDesc f12305C = null;

        /* renamed from: E */
        private PhoneNumberDesc f12307E = null;

        /* renamed from: G */
        private PhoneNumberDesc f12309G = null;

        /* renamed from: I */
        private PhoneNumberDesc f12311I = null;

        /* renamed from: K */
        private PhoneNumberDesc f12313K = null;

        /* renamed from: M */
        private PhoneNumberDesc f12315M = null;

        /* renamed from: N */
        private String f12316N = "";

        /* renamed from: O */
        private int f12317O = 0;

        /* renamed from: P */
        private String f12318P = "";

        /* renamed from: R */
        private String f12320R = "";

        /* renamed from: T */
        private String f12322T = "";

        /* renamed from: V */
        private String f12324V = "";

        /* renamed from: X */
        private String f12326X = "";

        /* renamed from: Z */
        private String f12328Z = "";

        /* renamed from: a0 */
        private boolean f12329a0 = false;

        /* renamed from: b0 */
        private List<NumberFormat> f12330b0 = new ArrayList();

        /* renamed from: c0 */
        private List<NumberFormat> f12331c0 = new ArrayList();

        /* renamed from: d0 */
        private boolean f12332d0 = false;

        /* renamed from: f0 */
        private String f12335f0 = "";

        /* renamed from: g0 */
        private boolean f12337g0 = false;

        /* renamed from: h0 */
        private boolean f12339h0 = false;

        /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder.class */
        public static final class Builder extends PhoneMetadata {
            @Override // com.google.i18n.phonenumbers.Phonemetadata.PhoneMetadata
            /* renamed from: I */
            public /* bridge */ /* synthetic */ PhoneMetadata mo7921I(String str) {
                m7918i0(str);
                return this;
            }

            @Override // com.google.i18n.phonenumbers.Phonemetadata.PhoneMetadata
            /* renamed from: J */
            public /* bridge */ /* synthetic */ PhoneMetadata mo7920J(String str) {
                m7917j0(str);
                return this;
            }

            /* renamed from: h0 */
            public PhoneMetadata m7919h0() {
                return this;
            }

            /* renamed from: i0 */
            public Builder m7918i0(String str) {
                super.mo7921I(str);
                return this;
            }

            /* renamed from: j0 */
            public Builder m7917j0(String str) {
                super.mo7920J(str);
                return this;
            }
        }

        /* renamed from: B */
        public static Builder m7977B() {
            return new Builder();
        }

        @Deprecated
        /* renamed from: A */
        public int m7978A() {
            return m7944f();
        }

        @Deprecated
        /* renamed from: C */
        public int m7976C() {
            return m7935m();
        }

        /* renamed from: D */
        public PhoneMetadata m7975D(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12310H = true;
                this.f12311I = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: E */
        public PhoneMetadata m7974E(int i) {
            this.f12317O = i;
            return this;
        }

        /* renamed from: F */
        public PhoneMetadata m7973F(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12357z = true;
                this.f12303A = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: G */
        public PhoneMetadata m7972G(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12338h = true;
                this.f12340i = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: H */
        public PhoneMetadata m7971H(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12334f = true;
                this.f12336g = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: I */
        public PhoneMetadata mo7921I(String str) {
            this.f12316N = str;
            return this;
        }

        /* renamed from: J */
        public PhoneMetadata mo7920J(String str) {
            this.f12318P = str;
            return this;
        }

        /* renamed from: K */
        public PhoneMetadata m7970K(String str) {
            this.f12333e0 = true;
            this.f12335f0 = str;
            return this;
        }

        /* renamed from: L */
        public PhoneMetadata m7969L(boolean z) {
            this.f12337g0 = z;
            return this;
        }

        /* renamed from: M */
        public PhoneMetadata m7968M(boolean z) {
            this.f12332d0 = z;
            return this;
        }

        /* renamed from: N */
        public PhoneMetadata m7967N(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12341j = true;
                this.f12342k = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: O */
        public PhoneMetadata m7966O(boolean z) {
            this.f12339h0 = z;
            return this;
        }

        /* renamed from: P */
        public PhoneMetadata m7965P(String str) {
            this.f12321S = true;
            this.f12322T = str;
            return this;
        }

        /* renamed from: Q */
        public PhoneMetadata m7964Q(String str) {
            this.f12325W = true;
            this.f12326X = str;
            return this;
        }

        /* renamed from: R */
        public PhoneMetadata m7963R(String str) {
            this.f12327Y = true;
            this.f12328Z = str;
            return this;
        }

        /* renamed from: S */
        public PhoneMetadata m7962S(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12314L = true;
                this.f12315M = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: T */
        public PhoneMetadata m7961T(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12353v = true;
                this.f12354w = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: U */
        public PhoneMetadata m7960U(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12349r = true;
                this.f12350s = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: V */
        public PhoneMetadata m7959V(String str) {
            this.f12323U = true;
            this.f12324V = str;
            return this;
        }

        /* renamed from: W */
        public PhoneMetadata m7958W(String str) {
            this.f12319Q = true;
            this.f12320R = str;
            return this;
        }

        /* renamed from: X */
        public PhoneMetadata m7957X(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12345n = true;
                this.f12346o = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: Y */
        public PhoneMetadata m7956Y(boolean z) {
            this.f12329a0 = z;
            return this;
        }

        /* renamed from: Z */
        public PhoneMetadata m7955Z(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12347p = true;
                this.f12348q = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: a */
        public int m7954a() {
            return this.f12317O;
        }

        /* renamed from: a0 */
        public PhoneMetadata m7953a0(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12306D = true;
                this.f12307E = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: b */
        public PhoneNumberDesc m7952b() {
            return this.f12340i;
        }

        /* renamed from: b0 */
        public PhoneMetadata m7951b0(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12312J = true;
                this.f12313K = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: c */
        public PhoneNumberDesc m7950c() {
            return this.f12336g;
        }

        /* renamed from: c0 */
        public PhoneMetadata m7949c0(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12308F = true;
                this.f12309G = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: d */
        public String m7948d() {
            return this.f12316N;
        }

        /* renamed from: d0 */
        public PhoneMetadata m7947d0(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12343l = true;
                this.f12344m = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: e */
        public String m7946e() {
            return this.f12318P;
        }

        /* renamed from: e0 */
        public PhoneMetadata m7945e0(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12355x = true;
                this.f12356y = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: f */
        public int m7944f() {
            return this.f12331c0.size();
        }

        /* renamed from: f0 */
        public PhoneMetadata m7943f0(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12304B = true;
                this.f12305C = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: g */
        public List<NumberFormat> m7942g() {
            return this.f12331c0;
        }

        /* renamed from: g0 */
        public PhoneMetadata m7941g0(PhoneNumberDesc phoneNumberDesc) {
            if (phoneNumberDesc != null) {
                this.f12351t = true;
                this.f12352u = phoneNumberDesc;
                return this;
            }
            throw null;
        }

        /* renamed from: h */
        public String m7940h() {
            return this.f12335f0;
        }

        /* renamed from: i */
        public PhoneNumberDesc m7939i() {
            return this.f12342k;
        }

        /* renamed from: j */
        public String m7938j() {
            return this.f12322T;
        }

        /* renamed from: k */
        public String m7937k() {
            return this.f12326X;
        }

        /* renamed from: l */
        public String m7936l() {
            return this.f12328Z;
        }

        /* renamed from: m */
        public int m7935m() {
            return this.f12330b0.size();
        }

        /* renamed from: n */
        public List<NumberFormat> m7934n() {
            return this.f12330b0;
        }

        /* renamed from: o */
        public PhoneNumberDesc m7933o() {
            return this.f12354w;
        }

        /* renamed from: p */
        public PhoneNumberDesc m7932p() {
            return this.f12350s;
        }

        /* renamed from: q */
        public String m7931q() {
            return this.f12324V;
        }

        /* renamed from: r */
        public PhoneNumberDesc m7930r() {
            return this.f12346o;
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) throws IOException {
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc = new PhoneNumberDesc();
                phoneNumberDesc.readExternal(objectInput);
                m7971H(phoneNumberDesc);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc2 = new PhoneNumberDesc();
                phoneNumberDesc2.readExternal(objectInput);
                m7972G(phoneNumberDesc2);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc3 = new PhoneNumberDesc();
                phoneNumberDesc3.readExternal(objectInput);
                m7967N(phoneNumberDesc3);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc4 = new PhoneNumberDesc();
                phoneNumberDesc4.readExternal(objectInput);
                m7947d0(phoneNumberDesc4);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc5 = new PhoneNumberDesc();
                phoneNumberDesc5.readExternal(objectInput);
                m7957X(phoneNumberDesc5);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc6 = new PhoneNumberDesc();
                phoneNumberDesc6.readExternal(objectInput);
                m7955Z(phoneNumberDesc6);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc7 = new PhoneNumberDesc();
                phoneNumberDesc7.readExternal(objectInput);
                m7960U(phoneNumberDesc7);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc8 = new PhoneNumberDesc();
                phoneNumberDesc8.readExternal(objectInput);
                m7941g0(phoneNumberDesc8);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc9 = new PhoneNumberDesc();
                phoneNumberDesc9.readExternal(objectInput);
                m7961T(phoneNumberDesc9);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc10 = new PhoneNumberDesc();
                phoneNumberDesc10.readExternal(objectInput);
                m7945e0(phoneNumberDesc10);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc11 = new PhoneNumberDesc();
                phoneNumberDesc11.readExternal(objectInput);
                m7973F(phoneNumberDesc11);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc12 = new PhoneNumberDesc();
                phoneNumberDesc12.readExternal(objectInput);
                m7943f0(phoneNumberDesc12);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc13 = new PhoneNumberDesc();
                phoneNumberDesc13.readExternal(objectInput);
                m7953a0(phoneNumberDesc13);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc14 = new PhoneNumberDesc();
                phoneNumberDesc14.readExternal(objectInput);
                m7949c0(phoneNumberDesc14);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc15 = new PhoneNumberDesc();
                phoneNumberDesc15.readExternal(objectInput);
                m7975D(phoneNumberDesc15);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc16 = new PhoneNumberDesc();
                phoneNumberDesc16.readExternal(objectInput);
                m7951b0(phoneNumberDesc16);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc17 = new PhoneNumberDesc();
                phoneNumberDesc17.readExternal(objectInput);
                m7962S(phoneNumberDesc17);
            }
            mo7921I(objectInput.readUTF());
            m7974E(objectInput.readInt());
            mo7920J(objectInput.readUTF());
            if (objectInput.readBoolean()) {
                m7958W(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                m7965P(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                m7959V(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                m7964Q(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                m7963R(objectInput.readUTF());
            }
            m7956Y(objectInput.readBoolean());
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                NumberFormat numberFormat = new NumberFormat();
                numberFormat.readExternal(objectInput);
                this.f12330b0.add(numberFormat);
            }
            int readInt2 = objectInput.readInt();
            for (int i2 = 0; i2 < readInt2; i2++) {
                NumberFormat numberFormat2 = new NumberFormat();
                numberFormat2.readExternal(objectInput);
                this.f12331c0.add(numberFormat2);
            }
            m7968M(objectInput.readBoolean());
            if (objectInput.readBoolean()) {
                m7970K(objectInput.readUTF());
            }
            m7969L(objectInput.readBoolean());
            m7966O(objectInput.readBoolean());
        }

        /* renamed from: s */
        public boolean m7929s() {
            return this.f12329a0;
        }

        /* renamed from: t */
        public PhoneNumberDesc m7928t() {
            return this.f12348q;
        }

        /* renamed from: u */
        public PhoneNumberDesc m7927u() {
            return this.f12344m;
        }

        /* renamed from: v */
        public PhoneNumberDesc m7926v() {
            return this.f12356y;
        }

        /* renamed from: w */
        public PhoneNumberDesc m7925w() {
            return this.f12305C;
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeBoolean(this.f12334f);
            if (this.f12334f) {
                this.f12336g.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12338h);
            if (this.f12338h) {
                this.f12340i.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12341j);
            if (this.f12341j) {
                this.f12342k.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12343l);
            if (this.f12343l) {
                this.f12344m.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12345n);
            if (this.f12345n) {
                this.f12346o.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12347p);
            if (this.f12347p) {
                this.f12348q.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12349r);
            if (this.f12349r) {
                this.f12350s.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12351t);
            if (this.f12351t) {
                this.f12352u.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12353v);
            if (this.f12353v) {
                this.f12354w.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12355x);
            if (this.f12355x) {
                this.f12356y.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12357z);
            if (this.f12357z) {
                this.f12303A.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12304B);
            if (this.f12304B) {
                this.f12305C.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12306D);
            if (this.f12306D) {
                this.f12307E.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12308F);
            if (this.f12308F) {
                this.f12309G.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12310H);
            if (this.f12310H) {
                this.f12311I.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12312J);
            if (this.f12312J) {
                this.f12313K.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12314L);
            if (this.f12314L) {
                this.f12315M.writeExternal(objectOutput);
            }
            objectOutput.writeUTF(this.f12316N);
            objectOutput.writeInt(this.f12317O);
            objectOutput.writeUTF(this.f12318P);
            objectOutput.writeBoolean(this.f12319Q);
            if (this.f12319Q) {
                objectOutput.writeUTF(this.f12320R);
            }
            objectOutput.writeBoolean(this.f12321S);
            if (this.f12321S) {
                objectOutput.writeUTF(this.f12322T);
            }
            objectOutput.writeBoolean(this.f12323U);
            if (this.f12323U) {
                objectOutput.writeUTF(this.f12324V);
            }
            objectOutput.writeBoolean(this.f12325W);
            if (this.f12325W) {
                objectOutput.writeUTF(this.f12326X);
            }
            objectOutput.writeBoolean(this.f12327Y);
            if (this.f12327Y) {
                objectOutput.writeUTF(this.f12328Z);
            }
            objectOutput.writeBoolean(this.f12329a0);
            int C = m7976C();
            objectOutput.writeInt(C);
            for (int i = 0; i < C; i++) {
                this.f12330b0.get(i).writeExternal(objectOutput);
            }
            int A = m7978A();
            objectOutput.writeInt(A);
            for (int i2 = 0; i2 < A; i2++) {
                this.f12331c0.get(i2).writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f12332d0);
            objectOutput.writeBoolean(this.f12333e0);
            if (this.f12333e0) {
                objectOutput.writeUTF(this.f12335f0);
            }
            objectOutput.writeBoolean(this.f12337g0);
            objectOutput.writeBoolean(this.f12339h0);
        }

        /* renamed from: x */
        public PhoneNumberDesc m7924x() {
            return this.f12352u;
        }

        /* renamed from: y */
        public boolean m7923y() {
            return this.f12333e0;
        }

        /* renamed from: z */
        public boolean m7922z() {
            return this.f12323U;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection.class */
    public static class PhoneMetadataCollection implements Externalizable {
        private static final long serialVersionUID = 1;

        /* renamed from: f */
        private List<PhoneMetadata> f12358f = new ArrayList();

        /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder.class */
        public static final class Builder extends PhoneMetadataCollection {
        }

        /* renamed from: a */
        public int m7916a() {
            return this.f12358f.size();
        }

        /* renamed from: b */
        public List<PhoneMetadata> m7915b() {
            return this.f12358f;
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) throws IOException {
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                PhoneMetadata phoneMetadata = new PhoneMetadata();
                phoneMetadata.readExternal(objectInput);
                this.f12358f.add(phoneMetadata);
            }
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            int a = m7916a();
            objectOutput.writeInt(a);
            for (int i = 0; i < a; i++) {
                this.f12358f.get(i).writeExternal(objectOutput);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc.class */
    public static class PhoneNumberDesc implements Externalizable {
        private static final long serialVersionUID = 1;

        /* renamed from: f */
        private boolean f12359f;

        /* renamed from: j */
        private boolean f12363j;

        /* renamed from: g */
        private String f12360g = "";

        /* renamed from: h */
        private List<Integer> f12361h = new ArrayList();

        /* renamed from: i */
        private List<Integer> f12362i = new ArrayList();

        /* renamed from: k */
        private String f12364k = "";

        /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder.class */
        public static final class Builder extends PhoneNumberDesc {
        }

        /* renamed from: a */
        public String m7914a() {
            return this.f12360g;
        }

        /* renamed from: b */
        public int m7913b(int i) {
            return this.f12361h.get(i).intValue();
        }

        /* renamed from: c */
        public int m7912c() {
            return this.f12361h.size();
        }

        /* renamed from: d */
        public List<Integer> m7911d() {
            return this.f12361h;
        }

        /* renamed from: e */
        public int m7910e() {
            return this.f12362i.size();
        }

        /* renamed from: f */
        public List<Integer> m7909f() {
            return this.f12362i;
        }

        /* renamed from: g */
        public PhoneNumberDesc m7908g(String str) {
            this.f12363j = true;
            this.f12364k = str;
            return this;
        }

        /* renamed from: h */
        public PhoneNumberDesc m7907h(String str) {
            this.f12359f = true;
            this.f12360g = str;
            return this;
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) throws IOException {
            if (objectInput.readBoolean()) {
                m7907h(objectInput.readUTF());
            }
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                this.f12361h.add(Integer.valueOf(objectInput.readInt()));
            }
            int readInt2 = objectInput.readInt();
            for (int i2 = 0; i2 < readInt2; i2++) {
                this.f12362i.add(Integer.valueOf(objectInput.readInt()));
            }
            if (objectInput.readBoolean()) {
                m7908g(objectInput.readUTF());
            }
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeBoolean(this.f12359f);
            if (this.f12359f) {
                objectOutput.writeUTF(this.f12360g);
            }
            int c = m7912c();
            objectOutput.writeInt(c);
            for (int i = 0; i < c; i++) {
                objectOutput.writeInt(this.f12361h.get(i).intValue());
            }
            int e = m7910e();
            objectOutput.writeInt(e);
            for (int i2 = 0; i2 < e; i2++) {
                objectOutput.writeInt(this.f12362i.get(i2).intValue());
            }
            objectOutput.writeBoolean(this.f12363j);
            if (this.f12363j) {
                objectOutput.writeUTF(this.f12364k);
            }
        }
    }

    private Phonemetadata() {
    }
}
