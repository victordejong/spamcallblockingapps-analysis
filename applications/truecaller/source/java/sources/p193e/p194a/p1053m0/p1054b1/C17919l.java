package p193e.p194a.p1053m0.p1054b1;

import android.database.sqlite.SQLiteDatabase;
import com.mopub.mobileads.resource.DrawableConstants;
import io.agora.rtc.Constants;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17921a;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17922a0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17923a1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17924a2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17925b;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17926b0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17927b1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17928b2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17929c;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17930c0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17931c1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17932c2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17933d;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17934d0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17935d1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17936d2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17937e;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17938e0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17939e1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17940e2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17941f;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17942f0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17943f1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17944f2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17945g;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17946g0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17947g1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17948g2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17949h;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17950h0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17951h1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17952h2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17953i;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17954i0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17955i1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17956i2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17957j;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17958j0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17959j1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17960j2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17961k;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17962k0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17963k1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17964k2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17965l;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17966l0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17967l1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17968l2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17969m;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17970m0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17971m1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17972m2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17973n;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17974n0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17975n1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17976n2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17977o;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17978o0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17979o1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17980o2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17981p;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17982p0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17983p1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17984p2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17985q;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17986q0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17987q1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17988q2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17989r;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17990r0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17991r1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17992r2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17993s;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17994s0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17995s1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17996s2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17997t;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17998t0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C17999t1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18000t2;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18002u0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18003u1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18005v0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18006v1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18007w;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18008w0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18009w1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18010x;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18011x0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18012x1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18013y;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18014y0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18015y1;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18016z;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18017z0;
import p193e.p194a.p1053m0.p1054b1.p1056n.C18018z1;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.l */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/l.class */
public final class C17919l {
    /* renamed from: a */
    public static final void m15547a(int i, SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        AbstractC17918k abstractC17918k = C17915h.f50901a;
        switch (i) {
            case 85:
                abstractC17918k = new C17972m2();
                break;
            case 86:
            case 87:
            case 91:
            case 93:
            case 97:
            case 98:
            case 99:
            case 100:
            case 102:
            case 103:
            case 106:
            case 120:
            case 123:
            case 126:
            case 133:
            case 143:
            case 147:
            case DrawableConstants.CtaButton.WIDTH_DIPS /* 150 */:
            case Constants.ERR_PUBLISH_STREAM_NOT_FOUND /* 155 */:
            case 162:
            case 172:
            case 174:
            case 178:
            case 182:
            case 188:
            case 189:
            case 201:
            case 203:
            case 205:
            case 207:
                break;
            case 88:
                abstractC17918k = new C17976n2();
                break;
            case 89:
                abstractC17918k = new C17980o2();
                break;
            case 90:
                abstractC17918k = new C17984p2();
                break;
            case 92:
                abstractC17918k = new C17988q2();
                break;
            case 94:
                abstractC17918k = new C17992r2();
                break;
            case 95:
                abstractC17918k = new C17996s2();
                break;
            case 96:
                abstractC17918k = new C18000t2();
                break;
            case 101:
                abstractC17918k = new C17921a();
                break;
            case 104:
                abstractC17918k = new C17925b();
                break;
            case 105:
                abstractC17918k = new C17929c();
                break;
            case 107:
                abstractC17918k = new C17933d();
                break;
            case 108:
                abstractC17918k = new C17937e();
                break;
            case 109:
                abstractC17918k = new C17941f();
                break;
            case 110:
                abstractC17918k = new C17945g();
                break;
            case 111:
                abstractC17918k = new C17949h();
                break;
            case 112:
                abstractC17918k = new C17953i();
                break;
            case 113:
                abstractC17918k = new C17957j();
                break;
            case 114:
                abstractC17918k = new C17961k();
                break;
            case 115:
                abstractC17918k = new C17965l();
                break;
            case 116:
                abstractC17918k = new C17969m();
                break;
            case 117:
                abstractC17918k = new C17973n();
                break;
            case 118:
                abstractC17918k = new C17977o();
                break;
            case 119:
                abstractC17918k = new C17981p();
                break;
            case 121:
                abstractC17918k = new C17985q();
                break;
            case 122:
                abstractC17918k = new C17989r();
                break;
            case 124:
                abstractC17918k = new C17993s();
                break;
            case 125:
                abstractC17918k = new C17997t();
                break;
            case Constants.ERR_WATERMARKR_INFO /* 127 */:
                abstractC17918k = new C18007w();
                break;
            case 128:
                abstractC17918k = new C18010x();
                break;
            case Constants.ERR_WATERMARK_READ /* 129 */:
                abstractC17918k = new C18013y();
                break;
            case Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED /* 130 */:
                abstractC17918k = new C18016z();
                break;
            case 131:
                abstractC17918k = new C17922a0();
                break;
            case 132:
                abstractC17918k = new C17926b0();
                break;
            case 134:
                abstractC17918k = new C17930c0();
                break;
            case 135:
                abstractC17918k = new C17934d0();
                break;
            case 136:
                abstractC17918k = new C17938e0();
                break;
            case 137:
                abstractC17918k = new C17942f0();
                break;
            case 138:
                abstractC17918k = new C17946g0();
                break;
            case 139:
                abstractC17918k = new C17950h0();
                break;
            case 140:
                abstractC17918k = new C17954i0();
                break;
            case 141:
                abstractC17918k = new C17958j0();
                break;
            case 142:
                abstractC17918k = new C17962k0();
                break;
            case 144:
                abstractC17918k = new C17966l0();
                break;
            case 145:
                abstractC17918k = new C17970m0();
                break;
            case 146:
                abstractC17918k = new C17974n0();
                break;
            case 148:
                abstractC17918k = new C17978o0();
                break;
            case 149:
                abstractC17918k = new C17982p0();
                break;
            case Constants.ERR_PUBLISH_STREAM_CDN_ERROR /* 151 */:
                abstractC17918k = new C17986q0();
                break;
            case Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT /* 152 */:
                abstractC17918k = new C17990r0();
                break;
            case Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED /* 153 */:
                abstractC17918k = new C17994s0();
                break;
            case Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR /* 154 */:
                abstractC17918k = new C17998t0();
                break;
            case Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED /* 156 */:
                abstractC17918k = new C18002u0();
                break;
            case Constants.ERR_MODULE_NOT_FOUND /* 157 */:
                abstractC17918k = new C18005v0();
                break;
            case 158:
                abstractC17918k = new C18008w0();
                break;
            case 159:
                abstractC17918k = new C18011x0();
                break;
            case Constants.ERR_ALREADY_IN_RECORDING /* 160 */:
                abstractC17918k = new C18014y0();
                break;
            case 161:
                abstractC17918k = new C18017z0();
                break;
            case 163:
                abstractC17918k = new C17923a1();
                break;
            case 164:
                abstractC17918k = new C17927b1();
                break;
            case 165:
                abstractC17918k = new C17931c1();
                break;
            case 166:
                abstractC17918k = new C17935d1();
                break;
            case 167:
                abstractC17918k = new C17939e1();
                break;
            case 168:
                abstractC17918k = new C17943f1();
                break;
            case 169:
                abstractC17918k = new C17947g1();
                break;
            case 170:
                abstractC17918k = new C17951h1();
                break;
            case 171:
                abstractC17918k = new C17955i1();
                break;
            case 173:
                abstractC17918k = new C17959j1();
                break;
            case 175:
                abstractC17918k = new C17963k1();
                break;
            case 176:
                abstractC17918k = new C17967l1();
                break;
            case 177:
                abstractC17918k = new C17971m1();
                break;
            case 179:
                abstractC17918k = new C17975n1();
                break;
            case 180:
                abstractC17918k = new C17979o1();
                break;
            case 181:
                abstractC17918k = new C17983p1();
                break;
            case 183:
                abstractC17918k = new C17987q1();
                break;
            case 184:
                abstractC17918k = new C17991r1();
                break;
            case 185:
                abstractC17918k = new C17995s1();
                break;
            case 186:
                abstractC17918k = new C17999t1();
                break;
            case 187:
                abstractC17918k = new C18003u1();
                break;
            case 190:
                abstractC17918k = new C18006v1();
                break;
            case 191:
                abstractC17918k = new C18009w1();
                break;
            case 192:
                abstractC17918k = new C18012x1();
                break;
            case 193:
                abstractC17918k = new C18015y1();
                break;
            case 194:
                abstractC17918k = new C18018z1();
                break;
            case 195:
                abstractC17918k = new C17924a2();
                break;
            case 196:
                abstractC17918k = new C17928b2();
                break;
            case 197:
                abstractC17918k = new C17932c2();
                break;
            case 198:
                abstractC17918k = new C17936d2();
                break;
            case 199:
                abstractC17918k = new C17940e2();
                break;
            case 200:
                abstractC17918k = new C17944f2();
                break;
            case 202:
                abstractC17918k = new C17948g2();
                break;
            case 204:
                abstractC17918k = new C17952h2();
                break;
            case 206:
                abstractC17918k = new C17956i2();
                break;
            case 208:
                abstractC17918k = new C17960j2();
                break;
            case 209:
                abstractC17918k = new C17964k2();
                break;
            case 210:
                abstractC17918k = new C17968l2();
                break;
            default:
                throw new IllegalStateException("Version migration is not provided".toString());
        }
        abstractC17918k.mo15540a(sQLiteDatabase);
    }
}
