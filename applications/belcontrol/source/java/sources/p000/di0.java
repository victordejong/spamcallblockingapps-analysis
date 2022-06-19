package p000;

import android.graphics.Matrix;
import android.util.Log;
import com.android.internal.telephony.PhoneConstants;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import com.millennialmedia.mediation.CustomEventNative;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.bouncycastle.asn1.x509.DisplayText;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.DefaultHandler2;
import uh0;
import yh0;
import zh0;
/* renamed from: di0 */
/* loaded from: classes-dex2jar.jar:di0.class */
public class di0 extends DefaultHandler2 {

    /* renamed from: j */
    public static HashMap<String, Integer> f5890j;

    /* renamed from: k */
    public static HashMap<String, zh0.p> f5891k;

    /* renamed from: l */
    public static HashMap<String, Integer> f5892l;

    /* renamed from: m */
    public static HashMap<String, yh0.a> f5893m;

    /* renamed from: d */
    public int f5897d;

    /* renamed from: a */
    public zh0 f5894a = null;

    /* renamed from: b */
    public zh0.j0 f5895b = null;

    /* renamed from: c */
    public boolean f5896c = false;

    /* renamed from: e */
    public boolean f5898e = false;

    /* renamed from: f */
    public EnumC1298c f5899f = null;

    /* renamed from: g */
    public StringBuilder f5900g = null;

    /* renamed from: h */
    public boolean f5901h = false;

    /* renamed from: i */
    public StringBuilder f5902i = null;

    /* renamed from: di0$a */
    /* loaded from: classes-dex2jar.jar:di0$a.class */
    public static /* synthetic */ class C1296a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5903a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f5904b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:242:0x059d -> B:501:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:243:0x05a1 -> B:497:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:244:0x05a5 -> B:509:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:245:0x05a9 -> B:505:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:246:0x05ad -> B:517:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:247:0x05b1 -> B:513:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:248:0x05b5 -> B:525:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:249:0x05b9 -> B:521:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:250:0x05bd -> B:533:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:251:0x05c1 -> B:529:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:252:0x05c5 -> B:541:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:253:0x05c9 -> B:537:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:254:0x05cd -> B:549:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:255:0x05d1 -> B:545:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:256:0x05d5 -> B:557:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:257:0x05d9 -> B:553:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:258:0x05dd -> B:565:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:259:0x05e1 -> B:561:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:260:0x05e5 -> B:573:0x00e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:261:0x05e9 -> B:569:0x00f4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:262:0x05ed -> B:581:0x0100). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:263:0x05f1 -> B:577:0x010c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:264:0x05f5 -> B:589:0x0118). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:265:0x05f9 -> B:585:0x0124). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:266:0x05fd -> B:597:0x0130). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:267:0x0601 -> B:593:0x013c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:268:0x0605 -> B:367:0x0148). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:269:0x0609 -> B:363:0x0154). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:270:0x060d -> B:375:0x0160). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:271:0x0611 -> B:371:0x016c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:272:0x0615 -> B:383:0x0178). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:273:0x0619 -> B:379:0x0184). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:274:0x061d -> B:391:0x0190). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:275:0x0621 -> B:387:0x019c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:276:0x0625 -> B:399:0x01a8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:277:0x0629 -> B:395:0x01b4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:278:0x062d -> B:407:0x01c0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:279:0x0631 -> B:403:0x01cc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:280:0x0635 -> B:415:0x01d8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:281:0x0639 -> B:411:0x01e4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:282:0x063d -> B:423:0x01f0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:283:0x0641 -> B:419:0x01fc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:284:0x0645 -> B:431:0x0208). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:285:0x0649 -> B:427:0x0214). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:286:0x064d -> B:439:0x0220). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:287:0x0651 -> B:435:0x022c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:288:0x0655 -> B:447:0x0238). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:289:0x0659 -> B:443:0x0244). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:290:0x065d -> B:455:0x0250). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:291:0x0661 -> B:451:0x025c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:292:0x0665 -> B:463:0x0268). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:293:0x0669 -> B:459:0x0274). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:294:0x066d -> B:471:0x0280). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:295:0x0671 -> B:467:0x028c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:296:0x0675 -> B:475:0x0298). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:297:0x0679 -> B:473:0x02a4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:298:0x067d -> B:479:0x02b0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:299:0x0681 -> B:477:0x02bc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:300:0x0685 -> B:483:0x02c8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:301:0x0689 -> B:481:0x02d4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:302:0x068d -> B:487:0x02e0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:303:0x0691 -> B:485:0x02ec). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:304:0x0695 -> B:493:0x02f8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:305:0x0699 -> B:489:0x0304). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:306:0x069d -> B:499:0x0310). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:307:0x06a1 -> B:495:0x031c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:308:0x06a5 -> B:507:0x0328). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:309:0x06a9 -> B:503:0x0334). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:310:0x06ad -> B:515:0x0340). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:311:0x06b1 -> B:511:0x034c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:312:0x06b5 -> B:523:0x0358). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:313:0x06b9 -> B:519:0x0364). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:314:0x06bd -> B:531:0x0370). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:315:0x06c1 -> B:527:0x037c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:316:0x06c5 -> B:539:0x0388). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:317:0x06c9 -> B:535:0x0394). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:318:0x06cd -> B:547:0x03a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:319:0x06d1 -> B:543:0x03ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:320:0x06d5 -> B:555:0x03b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:321:0x06d9 -> B:551:0x03c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:322:0x06dd -> B:563:0x03d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:323:0x06e1 -> B:559:0x03dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:324:0x06e5 -> B:571:0x03e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:325:0x06e9 -> B:567:0x03f4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:326:0x06ed -> B:579:0x0400). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:327:0x06f1 -> B:575:0x040c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:328:0x06f5 -> B:587:0x0418). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:329:0x06f9 -> B:178:0x0424). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:330:0x06fd -> B:595:0x0438). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:331:0x0701 -> B:591:0x0443). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:332:0x0705 -> B:365:0x044e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:333:0x0709 -> B:361:0x0459). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:334:0x070d -> B:373:0x0464). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:335:0x0711 -> B:369:0x0470). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:336:0x0715 -> B:381:0x047c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:337:0x0719 -> B:377:0x0488). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:338:0x071d -> B:389:0x0494). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:339:0x0721 -> B:385:0x04a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:340:0x0725 -> B:397:0x04ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:341:0x0729 -> B:393:0x04b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:342:0x072d -> B:405:0x04c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:343:0x0731 -> B:401:0x04d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:344:0x0735 -> B:413:0x04dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:345:0x0739 -> B:409:0x04e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:346:0x073d -> B:421:0x04f4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:347:0x0741 -> B:417:0x0500). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:348:0x0745 -> B:429:0x050c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:349:0x0749 -> B:425:0x0518). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:350:0x074d -> B:437:0x0524). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:351:0x0751 -> B:433:0x0530). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:352:0x0755 -> B:445:0x053c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:353:0x0759 -> B:441:0x0548). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:354:0x075d -> B:453:0x0554). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:355:0x0761 -> B:449:0x0560). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:356:0x0765 -> B:461:0x056c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:357:0x0769 -> B:457:0x0578). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:358:0x076d -> B:469:0x0584). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:359:0x0771 -> B:465:0x0590). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC1297b.values().length];
            f5904b = iArr;
            try {
                iArr[EnumC1297b.x.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5904b[EnumC1297b.y.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5904b[EnumC1297b.width.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5904b[EnumC1297b.height.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f5904b[EnumC1297b.version.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f5904b[EnumC1297b.href.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f5904b[EnumC1297b.preserveAspectRatio.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f5904b[EnumC1297b.d.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f5904b[EnumC1297b.pathLength.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f5904b[EnumC1297b.rx.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f5904b[EnumC1297b.ry.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f5904b[EnumC1297b.cx.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f5904b[EnumC1297b.cy.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f5904b[EnumC1297b.r.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f5904b[EnumC1297b.x1.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f5904b[EnumC1297b.y1.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f5904b[EnumC1297b.x2.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f5904b[EnumC1297b.y2.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f5904b[EnumC1297b.dx.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                f5904b[EnumC1297b.dy.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            try {
                f5904b[EnumC1297b.requiredFeatures.ordinal()] = 21;
            } catch (NoSuchFieldError e21) {
            }
            try {
                f5904b[EnumC1297b.requiredExtensions.ordinal()] = 22;
            } catch (NoSuchFieldError e22) {
            }
            try {
                f5904b[EnumC1297b.systemLanguage.ordinal()] = 23;
            } catch (NoSuchFieldError e23) {
            }
            try {
                f5904b[EnumC1297b.requiredFormats.ordinal()] = 24;
            } catch (NoSuchFieldError e24) {
            }
            try {
                f5904b[EnumC1297b.requiredFonts.ordinal()] = 25;
            } catch (NoSuchFieldError e25) {
            }
            try {
                f5904b[EnumC1297b.refX.ordinal()] = 26;
            } catch (NoSuchFieldError e26) {
            }
            try {
                f5904b[EnumC1297b.refY.ordinal()] = 27;
            } catch (NoSuchFieldError e27) {
            }
            try {
                f5904b[EnumC1297b.markerWidth.ordinal()] = 28;
            } catch (NoSuchFieldError e28) {
            }
            try {
                f5904b[EnumC1297b.markerHeight.ordinal()] = 29;
            } catch (NoSuchFieldError e29) {
            }
            try {
                f5904b[EnumC1297b.markerUnits.ordinal()] = 30;
            } catch (NoSuchFieldError e30) {
            }
            try {
                f5904b[EnumC1297b.orient.ordinal()] = 31;
            } catch (NoSuchFieldError e31) {
            }
            try {
                f5904b[EnumC1297b.gradientUnits.ordinal()] = 32;
            } catch (NoSuchFieldError e32) {
            }
            try {
                f5904b[EnumC1297b.gradientTransform.ordinal()] = 33;
            } catch (NoSuchFieldError e33) {
            }
            try {
                f5904b[EnumC1297b.spreadMethod.ordinal()] = 34;
            } catch (NoSuchFieldError e34) {
            }
            try {
                f5904b[EnumC1297b.fx.ordinal()] = 35;
            } catch (NoSuchFieldError e35) {
            }
            try {
                f5904b[EnumC1297b.fy.ordinal()] = 36;
            } catch (NoSuchFieldError e36) {
            }
            try {
                f5904b[EnumC1297b.offset.ordinal()] = 37;
            } catch (NoSuchFieldError e37) {
            }
            try {
                f5904b[EnumC1297b.clipPathUnits.ordinal()] = 38;
            } catch (NoSuchFieldError e38) {
            }
            try {
                f5904b[EnumC1297b.startOffset.ordinal()] = 39;
            } catch (NoSuchFieldError e39) {
            }
            try {
                f5904b[EnumC1297b.patternUnits.ordinal()] = 40;
            } catch (NoSuchFieldError e40) {
            }
            try {
                f5904b[EnumC1297b.patternContentUnits.ordinal()] = 41;
            } catch (NoSuchFieldError e41) {
            }
            try {
                f5904b[EnumC1297b.patternTransform.ordinal()] = 42;
            } catch (NoSuchFieldError e42) {
            }
            try {
                f5904b[EnumC1297b.maskUnits.ordinal()] = 43;
            } catch (NoSuchFieldError e43) {
            }
            try {
                f5904b[EnumC1297b.maskContentUnits.ordinal()] = 44;
            } catch (NoSuchFieldError e44) {
            }
            try {
                f5904b[EnumC1297b.style.ordinal()] = 45;
            } catch (NoSuchFieldError e45) {
            }
            try {
                f5904b[EnumC1297b.CLASS.ordinal()] = 46;
            } catch (NoSuchFieldError e46) {
            }
            try {
                f5904b[EnumC1297b.fill.ordinal()] = 47;
            } catch (NoSuchFieldError e47) {
            }
            try {
                f5904b[EnumC1297b.fill_rule.ordinal()] = 48;
            } catch (NoSuchFieldError e48) {
            }
            try {
                f5904b[EnumC1297b.fill_opacity.ordinal()] = 49;
            } catch (NoSuchFieldError e49) {
            }
            try {
                f5904b[EnumC1297b.stroke.ordinal()] = 50;
            } catch (NoSuchFieldError e50) {
            }
            try {
                f5904b[EnumC1297b.stroke_opacity.ordinal()] = 51;
            } catch (NoSuchFieldError e51) {
            }
            try {
                f5904b[EnumC1297b.stroke_width.ordinal()] = 52;
            } catch (NoSuchFieldError e52) {
            }
            try {
                f5904b[EnumC1297b.stroke_linecap.ordinal()] = 53;
            } catch (NoSuchFieldError e53) {
            }
            try {
                f5904b[EnumC1297b.stroke_linejoin.ordinal()] = 54;
            } catch (NoSuchFieldError e54) {
            }
            try {
                f5904b[EnumC1297b.stroke_miterlimit.ordinal()] = 55;
            } catch (NoSuchFieldError e55) {
            }
            try {
                f5904b[EnumC1297b.stroke_dasharray.ordinal()] = 56;
            } catch (NoSuchFieldError e56) {
            }
            try {
                f5904b[EnumC1297b.stroke_dashoffset.ordinal()] = 57;
            } catch (NoSuchFieldError e57) {
            }
            try {
                f5904b[EnumC1297b.opacity.ordinal()] = 58;
            } catch (NoSuchFieldError e58) {
            }
            try {
                f5904b[EnumC1297b.color.ordinal()] = 59;
            } catch (NoSuchFieldError e59) {
            }
            try {
                f5904b[EnumC1297b.font.ordinal()] = 60;
            } catch (NoSuchFieldError e60) {
            }
            try {
                f5904b[EnumC1297b.font_family.ordinal()] = 61;
            } catch (NoSuchFieldError e61) {
            }
            try {
                f5904b[EnumC1297b.font_size.ordinal()] = 62;
            } catch (NoSuchFieldError e62) {
            }
            try {
                f5904b[EnumC1297b.font_weight.ordinal()] = 63;
            } catch (NoSuchFieldError e63) {
            }
            try {
                f5904b[EnumC1297b.font_style.ordinal()] = 64;
            } catch (NoSuchFieldError e64) {
            }
            try {
                f5904b[EnumC1297b.text_decoration.ordinal()] = 65;
            } catch (NoSuchFieldError e65) {
            }
            try {
                f5904b[EnumC1297b.direction.ordinal()] = 66;
            } catch (NoSuchFieldError e66) {
            }
            try {
                f5904b[EnumC1297b.text_anchor.ordinal()] = 67;
            } catch (NoSuchFieldError e67) {
            }
            try {
                f5904b[EnumC1297b.overflow.ordinal()] = 68;
            } catch (NoSuchFieldError e68) {
            }
            try {
                f5904b[EnumC1297b.marker.ordinal()] = 69;
            } catch (NoSuchFieldError e69) {
            }
            try {
                f5904b[EnumC1297b.marker_start.ordinal()] = 70;
            } catch (NoSuchFieldError e70) {
            }
            try {
                f5904b[EnumC1297b.marker_mid.ordinal()] = 71;
            } catch (NoSuchFieldError e71) {
            }
            try {
                f5904b[EnumC1297b.marker_end.ordinal()] = 72;
            } catch (NoSuchFieldError e72) {
            }
            try {
                f5904b[EnumC1297b.display.ordinal()] = 73;
            } catch (NoSuchFieldError e73) {
            }
            try {
                f5904b[EnumC1297b.visibility.ordinal()] = 74;
            } catch (NoSuchFieldError e74) {
            }
            try {
                f5904b[EnumC1297b.stop_color.ordinal()] = 75;
            } catch (NoSuchFieldError e75) {
            }
            try {
                f5904b[EnumC1297b.stop_opacity.ordinal()] = 76;
            } catch (NoSuchFieldError e76) {
            }
            try {
                f5904b[EnumC1297b.clip.ordinal()] = 77;
            } catch (NoSuchFieldError e77) {
            }
            try {
                f5904b[EnumC1297b.clip_path.ordinal()] = 78;
            } catch (NoSuchFieldError e78) {
            }
            try {
                f5904b[EnumC1297b.clip_rule.ordinal()] = 79;
            } catch (NoSuchFieldError e79) {
            }
            try {
                f5904b[EnumC1297b.mask.ordinal()] = 80;
            } catch (NoSuchFieldError e80) {
            }
            try {
                f5904b[EnumC1297b.solid_color.ordinal()] = 81;
            } catch (NoSuchFieldError e81) {
            }
            try {
                f5904b[EnumC1297b.solid_opacity.ordinal()] = 82;
            } catch (NoSuchFieldError e82) {
            }
            try {
                f5904b[EnumC1297b.viewport_fill.ordinal()] = 83;
            } catch (NoSuchFieldError e83) {
            }
            try {
                f5904b[EnumC1297b.viewport_fill_opacity.ordinal()] = 84;
            } catch (NoSuchFieldError e84) {
            }
            try {
                f5904b[EnumC1297b.vector_effect.ordinal()] = 85;
            } catch (NoSuchFieldError e85) {
            }
            try {
                f5904b[EnumC1297b.viewBox.ordinal()] = 86;
            } catch (NoSuchFieldError e86) {
            }
            try {
                f5904b[EnumC1297b.type.ordinal()] = 87;
            } catch (NoSuchFieldError e87) {
            }
            try {
                f5904b[EnumC1297b.media.ordinal()] = 88;
            } catch (NoSuchFieldError e88) {
            }
            int[] iArr2 = new int[EnumC1298c.values().length];
            f5903a = iArr2;
            try {
                iArr2[EnumC1298c.svg.ordinal()] = 1;
            } catch (NoSuchFieldError e89) {
            }
            try {
                f5903a[EnumC1298c.g.ordinal()] = 2;
            } catch (NoSuchFieldError e90) {
            }
            try {
                f5903a[EnumC1298c.a.ordinal()] = 3;
            } catch (NoSuchFieldError e91) {
            }
            try {
                f5903a[EnumC1298c.defs.ordinal()] = 4;
            } catch (NoSuchFieldError e92) {
            }
            try {
                f5903a[EnumC1298c.use.ordinal()] = 5;
            } catch (NoSuchFieldError e93) {
            }
            try {
                f5903a[EnumC1298c.path.ordinal()] = 6;
            } catch (NoSuchFieldError e94) {
            }
            try {
                f5903a[EnumC1298c.rect.ordinal()] = 7;
            } catch (NoSuchFieldError e95) {
            }
            try {
                f5903a[EnumC1298c.circle.ordinal()] = 8;
            } catch (NoSuchFieldError e96) {
            }
            try {
                f5903a[EnumC1298c.ellipse.ordinal()] = 9;
            } catch (NoSuchFieldError e97) {
            }
            try {
                f5903a[EnumC1298c.line.ordinal()] = 10;
            } catch (NoSuchFieldError e98) {
            }
            try {
                f5903a[EnumC1298c.polyline.ordinal()] = 11;
            } catch (NoSuchFieldError e99) {
            }
            try {
                f5903a[EnumC1298c.polygon.ordinal()] = 12;
            } catch (NoSuchFieldError e100) {
            }
            try {
                f5903a[EnumC1298c.text.ordinal()] = 13;
            } catch (NoSuchFieldError e101) {
            }
            try {
                f5903a[EnumC1298c.tspan.ordinal()] = 14;
            } catch (NoSuchFieldError e102) {
            }
            try {
                f5903a[EnumC1298c.tref.ordinal()] = 15;
            } catch (NoSuchFieldError e103) {
            }
            try {
                f5903a[EnumC1298c.SWITCH.ordinal()] = 16;
            } catch (NoSuchFieldError e104) {
            }
            try {
                f5903a[EnumC1298c.symbol.ordinal()] = 17;
            } catch (NoSuchFieldError e105) {
            }
            try {
                f5903a[EnumC1298c.marker.ordinal()] = 18;
            } catch (NoSuchFieldError e106) {
            }
            try {
                f5903a[EnumC1298c.linearGradient.ordinal()] = 19;
            } catch (NoSuchFieldError e107) {
            }
            try {
                f5903a[EnumC1298c.radialGradient.ordinal()] = 20;
            } catch (NoSuchFieldError e108) {
            }
            try {
                f5903a[EnumC1298c.stop.ordinal()] = 21;
            } catch (NoSuchFieldError e109) {
            }
            try {
                f5903a[EnumC1298c.title.ordinal()] = 22;
            } catch (NoSuchFieldError e110) {
            }
            try {
                f5903a[EnumC1298c.desc.ordinal()] = 23;
            } catch (NoSuchFieldError e111) {
            }
            try {
                f5903a[EnumC1298c.clipPath.ordinal()] = 24;
            } catch (NoSuchFieldError e112) {
            }
            try {
                f5903a[EnumC1298c.textPath.ordinal()] = 25;
            } catch (NoSuchFieldError e113) {
            }
            try {
                f5903a[EnumC1298c.pattern.ordinal()] = 26;
            } catch (NoSuchFieldError e114) {
            }
            try {
                f5903a[EnumC1298c.image.ordinal()] = 27;
            } catch (NoSuchFieldError e115) {
            }
            try {
                f5903a[EnumC1298c.view.ordinal()] = 28;
            } catch (NoSuchFieldError e116) {
            }
            try {
                f5903a[EnumC1298c.mask.ordinal()] = 29;
            } catch (NoSuchFieldError e117) {
            }
            try {
                f5903a[EnumC1298c.style.ordinal()] = 30;
            } catch (NoSuchFieldError e118) {
            }
            try {
                f5903a[EnumC1298c.solidColor.ordinal()] = 31;
            } catch (NoSuchFieldError e119) {
            }
        }
    }

    /* renamed from: di0$b */
    /* loaded from: classes-dex2jar.jar:di0$b.class */
    public enum EnumC1297b {
        CLASS,
        clip,
        clip_path,
        clipPathUnits,
        clip_rule,
        color,
        cx,
        cy,
        direction,
        dx,
        dy,
        fx,
        fy,
        d,
        display,
        fill,
        fill_rule,
        fill_opacity,
        font,
        font_family,
        font_size,
        font_weight,
        font_style,
        gradientTransform,
        gradientUnits,
        height,
        href,
        id,
        marker,
        marker_start,
        marker_mid,
        marker_end,
        markerHeight,
        markerUnits,
        markerWidth,
        mask,
        maskContentUnits,
        maskUnits,
        media,
        offset,
        opacity,
        orient,
        overflow,
        pathLength,
        patternContentUnits,
        patternTransform,
        patternUnits,
        points,
        preserveAspectRatio,
        r,
        refX,
        refY,
        requiredFeatures,
        requiredExtensions,
        requiredFormats,
        requiredFonts,
        rx,
        ry,
        solid_color,
        solid_opacity,
        spreadMethod,
        startOffset,
        stop_color,
        stop_opacity,
        stroke,
        stroke_dasharray,
        stroke_dashoffset,
        stroke_linecap,
        stroke_linejoin,
        stroke_miterlimit,
        stroke_opacity,
        stroke_width,
        style,
        systemLanguage,
        text_anchor,
        text_decoration,
        transform,
        type,
        vector_effect,
        version,
        viewBox,
        width,
        x,
        y,
        x1,
        y1,
        x2,
        y2,
        viewport_fill,
        viewport_fill_opacity,
        visibility,
        UNSUPPORTED;
        

        /* renamed from: Q0 */
        public static HashMap<String, EnumC1297b> f5938Q0 = new HashMap<>();

        /* renamed from: a */
        public static EnumC1297b m2543a(String str) {
            HashMap<String, EnumC1297b> hashMap;
            EnumC1297b enumC1297b;
            EnumC1297b enumC1297b2 = f5938Q0.get(str);
            if (enumC1297b2 != null) {
                return enumC1297b2;
            }
            if (str.equals("class")) {
                hashMap = f5938Q0;
                enumC1297b = CLASS;
            } else {
                if (str.indexOf(95) == -1) {
                    try {
                        EnumC1297b valueOf = valueOf(str.replace('-', '_'));
                        if (valueOf != CLASS) {
                            f5938Q0.put(str, valueOf);
                            return valueOf;
                        }
                    } catch (IllegalArgumentException e) {
                    }
                }
                hashMap = f5938Q0;
                enumC1297b = UNSUPPORTED;
            }
            hashMap.put(str, enumC1297b);
            return enumC1297b;
        }
    }

    /* renamed from: di0$c */
    /* loaded from: classes-dex2jar.jar:di0$c.class */
    public enum EnumC1298c {
        svg,
        a,
        circle,
        clipPath,
        defs,
        desc,
        ellipse,
        g,
        image,
        line,
        linearGradient,
        marker,
        mask,
        path,
        pattern,
        polygon,
        polyline,
        radialGradient,
        rect,
        solidColor,
        stop,
        style,
        SWITCH,
        symbol,
        text,
        textPath,
        title,
        tref,
        tspan,
        use,
        view,
        UNSUPPORTED;
        

        /* renamed from: I */
        public static HashMap<String, EnumC1298c> f6007I = new HashMap<>();

        /* renamed from: a */
        public static EnumC1298c m2542a(String str) {
            HashMap<String, EnumC1298c> hashMap;
            EnumC1298c enumC1298c;
            EnumC1298c enumC1298c2 = f6007I.get(str);
            if (enumC1298c2 != null) {
                return enumC1298c2;
            }
            if (str.equals("switch")) {
                hashMap = f6007I;
                enumC1298c = SWITCH;
            } else {
                try {
                    EnumC1298c valueOf = valueOf(str);
                    if (valueOf != SWITCH) {
                        f6007I.put(str, valueOf);
                        return valueOf;
                    }
                } catch (IllegalArgumentException e) {
                }
                hashMap = f6007I;
                enumC1298c = UNSUPPORTED;
            }
            hashMap.put(str, enumC1298c);
            return enumC1298c;
        }
    }

    /* renamed from: di0$d */
    /* loaded from: classes-dex2jar.jar:di0$d.class */
    public static class C1299d {

        /* renamed from: a */
        public String f6033a;

        /* renamed from: c */
        public int f6035c;

        /* renamed from: b */
        public int f6034b = 0;

        /* renamed from: d */
        public wh0 f6036d = new wh0();

        public C1299d(String str) {
            this.f6035c = 0;
            String trim = str.trim();
            this.f6033a = trim;
            this.f6035c = trim.length();
        }

        /* renamed from: a */
        public int m2541a() {
            int i = this.f6034b;
            int i2 = this.f6035c;
            if (i == i2) {
                return -1;
            }
            int i3 = i + 1;
            this.f6034b = i3;
            if (i3 >= i2) {
                return -1;
            }
            return this.f6033a.charAt(i3);
        }

        /* renamed from: b */
        public String m2540b() {
            int i = this.f6034b;
            while (!m2535g() && !m2532j(this.f6033a.charAt(this.f6034b))) {
                this.f6034b++;
            }
            String substring = this.f6033a.substring(i, this.f6034b);
            this.f6034b = i;
            return substring;
        }

        /* renamed from: c */
        public Boolean m2539c(Object obj) {
            if (obj == null) {
                return null;
            }
            m2519w();
            return m2530l();
        }

        /* renamed from: d */
        public float m2538d(float f) {
            if (f == Float.NaN) {
                return Float.NaN;
            }
            m2519w();
            return m2528n();
        }

        /* renamed from: e */
        public boolean m2537e(char c) {
            int i = this.f6034b;
            boolean z = i < this.f6035c && this.f6033a.charAt(i) == c;
            if (z) {
                this.f6034b++;
            }
            return z;
        }

        /* renamed from: f */
        public boolean m2536f(String str) {
            int length = str.length();
            int i = this.f6034b;
            boolean z = i <= this.f6035c - length && this.f6033a.substring(i, i + length).equals(str);
            if (z) {
                this.f6034b += length;
            }
            return z;
        }

        /* renamed from: g */
        public boolean m2535g() {
            return this.f6034b == this.f6035c;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0037, code lost:
            if (r0 <= 'Z') goto L13;
         */
        /* renamed from: h */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean m2534h() {
            /*
                r3 = this;
                r0 = r3
                int r0 = r0.f6034b
                r4 = r0
                r0 = r3
                int r0 = r0.f6035c
                r5 = r0
                r0 = 0
                r6 = r0
                r0 = r4
                r1 = r5
                if (r0 != r1) goto L13
                r0 = 0
                return r0
            L13:
                r0 = r3
                java.lang.String r0 = r0.f6033a
                r1 = r4
                char r0 = r0.charAt(r1)
                r5 = r0
                r0 = r5
                r1 = 97
                if (r0 < r1) goto L28
                r0 = r5
                r1 = 122(0x7a, float:1.71E-43)
                if (r0 <= r1) goto L3a
            L28:
                r0 = r6
                r7 = r0
                r0 = r5
                r1 = 65
                if (r0 < r1) goto L3d
                r0 = r6
                r7 = r0
                r0 = r5
                r1 = 90
                if (r0 > r1) goto L3d
            L3a:
                r0 = 1
                r7 = r0
            L3d:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p000.di0.C1299d.m2534h():boolean");
        }

        /* renamed from: i */
        public boolean m2533i(int i) {
            return i == 10 || i == 13;
        }

        /* renamed from: j */
        public boolean m2532j(int i) {
            return i == 32 || i == 10 || i == 13 || i == 9;
        }

        /* renamed from: k */
        public Integer m2531k() {
            int i = this.f6034b;
            if (i == this.f6035c) {
                return null;
            }
            String str = this.f6033a;
            this.f6034b = i + 1;
            return Integer.valueOf(str.charAt(i));
        }

        /* renamed from: l */
        public Boolean m2530l() {
            int i = this.f6034b;
            if (i == this.f6035c) {
                return null;
            }
            char charAt = this.f6033a.charAt(i);
            if (charAt != '0' && charAt != '1') {
                return null;
            }
            boolean z = true;
            this.f6034b++;
            if (charAt != '1') {
                z = false;
            }
            return Boolean.valueOf(z);
        }

        /* renamed from: m */
        public Float m2529m() {
            xh0 b = xh0.b(this.f6033a, this.f6034b, this.f6035c);
            if (b == null) {
                return null;
            }
            this.f6034b = b.a();
            return Float.valueOf(b.c());
        }

        /* renamed from: n */
        public float m2528n() {
            float b = this.f6036d.b(this.f6033a, this.f6034b, this.f6035c);
            if (b != Float.NaN) {
                this.f6034b = this.f6036d.a();
            }
            return b;
        }

        /* renamed from: o */
        public String m2527o() {
            int i;
            if (m2535g()) {
                return null;
            }
            int i2 = this.f6034b;
            int charAt = this.f6033a.charAt(i2);
            while (true) {
                i = charAt;
                if ((i < 97 || i > 122) && (i < 65 || i > 90)) {
                    break;
                }
                charAt = m2541a();
            }
            int i3 = this.f6034b;
            while (m2532j(i)) {
                i = m2541a();
            }
            if (i == 40) {
                this.f6034b++;
                return this.f6033a.substring(i2, i3);
            }
            this.f6034b = i2;
            return null;
        }

        /* renamed from: p */
        public zh0.p m2526p() {
            Float m2529m = m2529m();
            if (m2529m == null) {
                return null;
            }
            zh0.d1 m2522t = m2522t();
            return m2522t == null ? new zh0.p(m2529m.floatValue(), zh0.d1.a) : new zh0.p(m2529m.floatValue(), m2522t);
        }

        /* renamed from: q */
        public String m2525q() {
            int m2541a;
            if (m2535g()) {
                return null;
            }
            int i = this.f6034b;
            char charAt = this.f6033a.charAt(i);
            if (charAt != '\'' && charAt != '\"') {
                return null;
            }
            do {
                m2541a = m2541a();
                if (m2541a == -1) {
                    break;
                }
            } while (m2541a != charAt);
            if (m2541a == -1) {
                this.f6034b = i;
                return null;
            }
            int i2 = this.f6034b + 1;
            this.f6034b = i2;
            return this.f6033a.substring(i + 1, i2 - 1);
        }

        /* renamed from: r */
        public String m2524r() {
            return m2523s(' ');
        }

        /* renamed from: s */
        public String m2523s(char c) {
            int m2541a;
            if (m2535g()) {
                return null;
            }
            char charAt = this.f6033a.charAt(this.f6034b);
            if (m2532j(charAt) || charAt == c) {
                return null;
            }
            int i = this.f6034b;
            do {
                m2541a = m2541a();
                if (m2541a == -1 || m2541a == c) {
                    break;
                }
            } while (!m2532j(m2541a));
            return this.f6033a.substring(i, this.f6034b);
        }

        /* renamed from: t */
        public zh0.d1 m2522t() {
            if (m2535g()) {
                return null;
            }
            if (this.f6033a.charAt(this.f6034b) == '%') {
                this.f6034b++;
                return zh0.d1.k;
            }
            int i = this.f6034b;
            if (i > this.f6035c - 2) {
                return null;
            }
            try {
                zh0.d1 valueOf = zh0.d1.valueOf(this.f6033a.substring(i, i + 2).toLowerCase(Locale.US));
                this.f6034b += 2;
                return valueOf;
            } catch (IllegalArgumentException e) {
                return null;
            }
        }

        /* renamed from: u */
        public Float m2521u() {
            m2519w();
            xh0 b = xh0.b(this.f6033a, this.f6034b, this.f6035c);
            if (b == null) {
                return null;
            }
            this.f6034b = b.a();
            return Float.valueOf(b.c());
        }

        /* renamed from: v */
        public String m2520v() {
            if (m2535g()) {
                return null;
            }
            int i = this.f6034b;
            this.f6034b = this.f6035c;
            return this.f6033a.substring(i);
        }

        /* renamed from: w */
        public boolean m2519w() {
            m2518x();
            int i = this.f6034b;
            if (i != this.f6035c && this.f6033a.charAt(i) == ',') {
                this.f6034b++;
                m2518x();
                return true;
            }
            return false;
        }

        /* renamed from: x */
        public void m2518x() {
            while (true) {
                int i = this.f6034b;
                if (i >= this.f6035c || !m2532j(this.f6033a.charAt(i))) {
                    return;
                }
                this.f6034b++;
            }
        }
    }

    /* renamed from: A0 */
    public static zh0.b m2640A0(String str) {
        C1299d c1299d = new C1299d(str);
        c1299d.m2518x();
        Float m2529m = c1299d.m2529m();
        c1299d.m2519w();
        Float m2529m2 = c1299d.m2529m();
        c1299d.m2519w();
        Float m2529m3 = c1299d.m2529m();
        c1299d.m2519w();
        Float m2529m4 = c1299d.m2529m();
        if (m2529m == null || m2529m2 == null || m2529m3 == null || m2529m4 == null) {
            throw new SAXException("Invalid viewBox definition - should have four numbers");
        }
        if (m2529m3.floatValue() < 0.0f) {
            throw new SAXException("Invalid viewBox. width cannot be negative");
        }
        if (m2529m4.floatValue() < 0.0f) {
            throw new SAXException("Invalid viewBox. height cannot be negative");
        }
        return new zh0.b(m2529m.floatValue(), m2529m2.floatValue(), m2529m3.floatValue(), m2529m4.floatValue());
    }

    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v134, types: [long] */
    /* JADX WARN: Type inference failed for: r0v155, types: [long] */
    /* JADX WARN: Type inference failed for: r0v161, types: [long] */
    /* JADX WARN: Type inference failed for: r0v168, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v172, types: [long] */
    /* JADX WARN: Type inference failed for: r0v176, types: [long] */
    /* JADX WARN: Type inference failed for: r0v180, types: [long] */
    /* JADX WARN: Type inference failed for: r0v184, types: [long] */
    /* JADX WARN: Type inference failed for: r0v190, types: [long] */
    /* JADX WARN: Type inference failed for: r0v197, types: [long] */
    /* JADX WARN: Type inference failed for: r0v203, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v210, types: [long] */
    /* JADX WARN: Type inference failed for: r0v214, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* renamed from: F0 */
    public static void m2630F0(zh0.e0 e0Var, String str, String str2) {
        char c;
        char c2;
        if (str2.length() != 0 && !str2.equals("inherit")) {
            switch (C1296a.f5904b[EnumC1297b.m2543a(str).ordinal()]) {
                case 47:
                    e0Var.b = m2572l0(str2, "fill");
                    c2 = e0Var.a;
                    c = 1;
                    break;
                case 48:
                    e0Var.c = m2599W(str2);
                    c2 = e0Var.a;
                    c = 2;
                    break;
                case 49:
                    e0Var.d = m2576j0(str2);
                    c2 = e0Var.a;
                    c = 4;
                    break;
                case 50:
                    e0Var.f = m2572l0(str2, "stroke");
                    c2 = e0Var.a;
                    c = '\b';
                    break;
                case 51:
                    e0Var.g = m2576j0(str2);
                    c2 = e0Var.a;
                    c = 16;
                    break;
                case 52:
                    e0Var.h = m2582g0(str2);
                    c2 = e0Var.a;
                    c = ' ';
                    break;
                case 53:
                    e0Var.j = m2560r0(str2);
                    c2 = e0Var.a;
                    c = '@';
                    break;
                case 54:
                    e0Var.k = m2558s0(str2);
                    c2 = e0Var.a;
                    c = 128;
                    break;
                case 55:
                    e0Var.l = m2598X(str2);
                    c2 = e0Var.a;
                    c = 256;
                    break;
                case 56:
                    if ("none".equals(str2)) {
                        e0Var.m = null;
                    } else {
                        e0Var.m = m2562q0(str2);
                    }
                    c2 = e0Var.a;
                    c = 512;
                    break;
                case 57:
                    e0Var.n = m2582g0(str2);
                    c2 = e0Var.a;
                    c = 1024;
                    break;
                case 58:
                    e0Var.o = m2576j0(str2);
                    c2 = e0Var.a;
                    c = 2048;
                    break;
                case 59:
                    e0Var.p = m2605S(str2);
                    c2 = e0Var.a;
                    c = 4096;
                    break;
                case 60:
                    m2596Z(e0Var, str2);
                    return;
                case 61:
                    e0Var.q = m2594a0(str2);
                    c2 = e0Var.a;
                    c = 8192;
                    break;
                case 62:
                    e0Var.r = m2592b0(str2);
                    c2 = e0Var.a;
                    c = 16384;
                    break;
                case 63:
                    e0Var.s = m2588d0(str2);
                    c2 = e0Var.a;
                    c = 32768;
                    break;
                case 64:
                    e0Var.t = m2590c0(str2);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 65:
                    e0Var.u = m2550w0(str2);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 66:
                    e0Var.v = m2548x0(str2);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 67:
                    e0Var.w = m2552v0(str2);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 68:
                    e0Var.x = m2574k0(str2);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 69:
                    String m2586e0 = m2586e0(str2, str);
                    e0Var.z = m2586e0;
                    e0Var.A = m2586e0;
                    e0Var.B = m2586e0;
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 70:
                    e0Var.z = m2586e0(str2, str);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 71:
                    e0Var.A = m2586e0(str2, str);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 72:
                    e0Var.B = m2586e0(str2, str);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 73:
                    if (str2.indexOf(124) < 0) {
                        if ("|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|".indexOf('|' + str2 + '|') != -1) {
                            e0Var.C = Boolean.valueOf(!str2.equals("none"));
                            c2 = e0Var.a;
                            c = 0;
                            break;
                        }
                    }
                    throw new SAXException("Invalid value for \"display\" attribute: " + str2);
                case 74:
                    if (str2.indexOf(124) < 0) {
                        if ("|visible|hidden|collapse|".indexOf('|' + str2 + '|') != -1) {
                            e0Var.D = Boolean.valueOf(str2.equals("visible"));
                            c2 = e0Var.a;
                            c = 0;
                            break;
                        }
                    }
                    throw new SAXException("Invalid value for \"visibility\" attribute: " + str2);
                case 75:
                    e0Var.E = str2.equals("currentColor") ? zh0.g.b() : m2605S(str2);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 76:
                    e0Var.F = m2576j0(str2);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 77:
                    e0Var.y = m2607R(str2);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 78:
                    e0Var.G = m2586e0(str2, str);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 79:
                    e0Var.H = m2599W(str2);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 80:
                    e0Var.I = m2586e0(str2, str);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 81:
                    e0Var.J = str2.equals("currentColor") ? zh0.g.b() : m2605S(str2);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 82:
                    e0Var.K = m2576j0(str2);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 83:
                    e0Var.L = str2.equals("currentColor") ? zh0.g.b() : m2605S(str2);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 84:
                    e0Var.M = Float.valueOf(m2576j0(str2));
                    c2 = e0Var.a;
                    c = 0;
                    break;
                case 85:
                    e0Var.N = m2544z0(str2);
                    c2 = e0Var.a;
                    c = 0;
                    break;
                default:
                    return;
            }
            e0Var.a = c2 | c;
        }
    }

    /* renamed from: R */
    public static zh0.c m2607R(String str) {
        if ("auto".equals(str)) {
            return null;
        }
        if (!str.toLowerCase(Locale.US).startsWith("rect(")) {
            throw new SAXException("Invalid clip attribute shape. Only rect() is supported.");
        }
        C1299d c1299d = new C1299d(str.substring(5));
        c1299d.m2518x();
        zh0.p m2578i0 = m2578i0(c1299d);
        c1299d.m2519w();
        zh0.p m2578i02 = m2578i0(c1299d);
        c1299d.m2519w();
        zh0.p m2578i03 = m2578i0(c1299d);
        c1299d.m2519w();
        zh0.p m2578i04 = m2578i0(c1299d);
        c1299d.m2518x();
        if (c1299d.m2537e(')')) {
            return new zh0.c(m2578i0, m2578i02, m2578i03, m2578i04);
        }
        throw new SAXException("Bad rect() clip definition: " + str);
    }

    /* renamed from: S */
    public static zh0.f m2605S(String str) {
        if (str.charAt(0) != '#') {
            if (!str.toLowerCase(Locale.US).startsWith("rgb(")) {
                return m2601U(str);
            }
            C1299d c1299d = new C1299d(str.substring(4));
            c1299d.m2518x();
            int m2603T = m2603T(c1299d);
            c1299d.m2519w();
            int m2603T2 = m2603T(c1299d);
            c1299d.m2519w();
            int m2603T3 = m2603T(c1299d);
            c1299d.m2518x();
            if (c1299d.m2537e(')')) {
                return new zh0.f((m2603T << 16) | (m2603T2 << 8) | m2603T3);
            }
            throw new SAXException("Bad rgb() colour value: " + str);
        }
        vh0 b = vh0.b(str, 1, str.length());
        if (b == null) {
            throw new SAXException("Bad hex colour value: " + str);
        }
        int a = b.a();
        if (a == 7) {
            return new zh0.f(b.c());
        }
        if (a != 4) {
            throw new SAXException("Bad hex colour value: " + str);
        }
        int c = b.c();
        int i = c & 3840;
        int i2 = c & HighLevelEncoder.LATCH_TO_EDIFACT;
        int i3 = c & 15;
        return new zh0.f(i3 | (i << 12) | (i << 16) | (i2 << 8) | (i2 << 4) | (i3 << 4));
    }

    /* renamed from: T */
    public static int m2603T(C1299d c1299d) {
        float floatValue = c1299d.m2529m().floatValue();
        float f = floatValue;
        if (c1299d.m2537e('%')) {
            f = (floatValue * 256.0f) / 100.0f;
        }
        return f < 0.0f ? 0 : f > 255.0f ? 255 : (int) f;
    }

    /* renamed from: U */
    public static zh0.f m2601U(String str) {
        if (f5890j == null) {
            m2577j();
        }
        Integer num = f5890j.get(str.toLowerCase(Locale.US));
        if (num != null) {
            return new zh0.f(num.intValue());
        }
        throw new SAXException("Invalid colour keyword: " + str);
    }

    /* renamed from: V */
    public static zh0.o0 m2600V(String str) {
        if (str.equals("none")) {
            return null;
        }
        return str.equals("currentColor") ? zh0.g.b() : m2605S(str);
    }

    /* renamed from: W */
    public static zh0.e0.a m2599W(String str) {
        if ("nonzero".equals(str)) {
            return zh0.e0.a.a;
        }
        if ("evenodd".equals(str)) {
            return zh0.e0.a.b;
        }
        throw new SAXException("Invalid fill-rule property: " + str);
    }

    /* renamed from: X */
    public static float m2598X(String str) {
        int length = str.length();
        if (length != 0) {
            return m2597Y(str, 0, length);
        }
        throw new SAXException("Invalid float value (empty string)");
    }

    /* renamed from: Y */
    public static float m2597Y(String str, int i, int i2) {
        xh0 b = xh0.b(str, i, i2);
        if (b != null) {
            return b.c();
        }
        throw new SAXException("Invalid float value: " + str);
    }

    /* renamed from: Z */
    public static void m2596Z(zh0.e0 e0Var, String str) {
        String m2523s;
        Integer num;
        if ("|caption|icon|menu|message-box|small-caption|status-bar|".indexOf('|' + str + '|') != -1) {
            return;
        }
        C1299d c1299d = new C1299d(str);
        Integer num2 = null;
        zh0.e0.b bVar = null;
        String str2 = null;
        while (true) {
            m2523s = c1299d.m2523s('/');
            c1299d.m2518x();
            if (m2523s == null) {
                throw new SAXException("Invalid font style attribute: missing font size and family");
            }
            if (num2 != null && bVar != null) {
                num = num2;
                break;
            } else if (!m2523s.equals("normal")) {
                Integer num3 = num2;
                if (num2 == null) {
                    num2 = f5892l.get(m2523s);
                    num3 = num2;
                    if (num2 != null) {
                        continue;
                    }
                }
                zh0.e0.b bVar2 = bVar;
                if (bVar == null) {
                    bVar = m2585f(m2523s);
                    bVar2 = bVar;
                    if (bVar != null) {
                        num2 = num3;
                    }
                }
                bVar = bVar2;
                num = num3;
                if (str2 != null) {
                    break;
                }
                bVar = bVar2;
                num = num3;
                if (!m2523s.equals("small-caps")) {
                    break;
                }
                str2 = m2523s;
                bVar = bVar2;
                num2 = num3;
            }
        }
        zh0.p m2592b0 = m2592b0(m2523s);
        if (c1299d.m2537e('/')) {
            c1299d.m2518x();
            String m2524r = c1299d.m2524r();
            if (m2524r == null) {
                throw new SAXException("Invalid font style attribute: missing line-height");
            }
            m2582g0(m2524r);
            c1299d.m2518x();
        }
        e0Var.q = m2594a0(c1299d.m2520v());
        e0Var.r = m2592b0;
        e0Var.s = Integer.valueOf(num == null ? 400 : num.intValue());
        zh0.e0.b bVar3 = bVar;
        if (bVar == null) {
            bVar3 = zh0.e0.b.a;
        }
        e0Var.t = bVar3;
        e0Var.a |= 122880;
    }

    /* renamed from: a0 */
    public static List<String> m2594a0(String str) {
        C1299d c1299d = new C1299d(str);
        ArrayList arrayList = null;
        while (true) {
            String m2525q = c1299d.m2525q();
            String str2 = m2525q;
            if (m2525q == null) {
                str2 = c1299d.m2523s(',');
            }
            if (str2 != null) {
                ArrayList arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(str2);
                c1299d.m2519w();
                arrayList = arrayList2;
                if (c1299d.m2535g()) {
                    arrayList = arrayList2;
                    break;
                }
            } else {
                break;
            }
        }
        return arrayList;
    }

    /* renamed from: b0 */
    public static zh0.p m2592b0(String str) {
        if (f5891k == null) {
            m2575k();
        }
        zh0.p pVar = f5891k.get(str);
        zh0.p pVar2 = pVar;
        if (pVar == null) {
            pVar2 = m2582g0(str);
        }
        return pVar2;
    }

    /* renamed from: c0 */
    public static zh0.e0.b m2590c0(String str) {
        zh0.e0.b m2585f = m2585f(str);
        if (m2585f != null) {
            return m2585f;
        }
        throw new SAXException("Invalid font-style property: " + str);
    }

    /* renamed from: d0 */
    public static Integer m2588d0(String str) {
        if (f5892l == null) {
            m2573l();
        }
        Integer num = f5892l.get(str);
        if (num != null) {
            return num;
        }
        throw new SAXException("Invalid font-weight property: " + str);
    }

    /* renamed from: e0 */
    public static String m2586e0(String str, String str2) {
        if (str.equals("none")) {
            return null;
        }
        if (str.startsWith("url(") && str.endsWith(")")) {
            return str.substring(4, str.length() - 1).trim();
        }
        throw new SAXException("Bad " + str2 + " attribute. Expected \"none\" or \"url()\" format");
    }

    /* renamed from: f */
    public static zh0.e0.b m2585f(String str) {
        if (TtmlNode.ITALIC.equals(str)) {
            return zh0.e0.b.b;
        }
        if ("normal".equals(str)) {
            return zh0.e0.b.a;
        }
        if (!"oblique".equals(str)) {
            return null;
        }
        return zh0.e0.b.c;
    }

    /* renamed from: g0 */
    public static zh0.p m2582g0(String str) {
        zh0.d1 d1Var;
        int i;
        if (str.length() != 0) {
            int length = str.length();
            zh0.d1 d1Var2 = zh0.d1.a;
            char charAt = str.charAt(length - 1);
            if (charAt == '%') {
                i = length - 1;
                d1Var = zh0.d1.k;
            } else {
                i = length;
                d1Var = d1Var2;
                if (length > 2) {
                    i = length;
                    d1Var = d1Var2;
                    if (Character.isLetter(charAt)) {
                        i = length;
                        d1Var = d1Var2;
                        if (Character.isLetter(str.charAt(length - 2))) {
                            i = length - 2;
                            try {
                                d1Var = zh0.d1.valueOf(str.substring(i).toLowerCase(Locale.US));
                            } catch (IllegalArgumentException e) {
                                throw new SAXException("Invalid length unit specifier: " + str);
                            }
                        }
                    }
                }
            }
            try {
                return new zh0.p(m2597Y(str, 0, i), d1Var);
            } catch (NumberFormatException e2) {
                throw new SAXException("Invalid length value: " + str, e2);
            }
        }
        throw new SAXException("Invalid length value (empty string)");
    }

    /* renamed from: h0 */
    public static List<zh0.p> m2580h0(String str) {
        if (str.length() != 0) {
            ArrayList arrayList = new ArrayList(1);
            C1299d c1299d = new C1299d(str);
            c1299d.m2518x();
            while (!c1299d.m2535g()) {
                Float m2529m = c1299d.m2529m();
                if (m2529m == null) {
                    throw new SAXException("Invalid length list value: " + c1299d.m2540b());
                }
                zh0.d1 m2522t = c1299d.m2522t();
                zh0.d1 d1Var = m2522t;
                if (m2522t == null) {
                    d1Var = zh0.d1.a;
                }
                arrayList.add(new zh0.p(m2529m.floatValue(), d1Var));
                c1299d.m2519w();
            }
            return arrayList;
        }
        throw new SAXException("Invalid length list (empty string)");
    }

    /* renamed from: i */
    public static void m2579i() {
        synchronized (di0.class) {
            try {
                HashMap<String, yh0.a> hashMap = new HashMap<>(10);
                f5893m = hashMap;
                hashMap.put("none", yh0.a.a);
                f5893m.put("xMinYMin", yh0.a.b);
                f5893m.put("xMidYMin", yh0.a.c);
                f5893m.put("xMaxYMin", yh0.a.d);
                f5893m.put("xMinYMid", yh0.a.f);
                f5893m.put("xMidYMid", yh0.a.g);
                f5893m.put("xMaxYMid", yh0.a.h);
                f5893m.put("xMinYMax", yh0.a.j);
                f5893m.put("xMidYMax", yh0.a.k);
                f5893m.put("xMaxYMax", yh0.a.l);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: i0 */
    public static zh0.p m2578i0(C1299d c1299d) {
        return c1299d.m2536f("auto") ? new zh0.p(0.0f) : c1299d.m2526p();
    }

    /* renamed from: j */
    public static void m2577j() {
        synchronized (di0.class) {
            try {
                HashMap<String, Integer> hashMap = new HashMap<>();
                f5890j = hashMap;
                hashMap.put("aliceblue", 15792383);
                f5890j.put("antiquewhite", 16444375);
                f5890j.put("aqua", 65535);
                f5890j.put("aquamarine", 8388564);
                f5890j.put("azure", 15794175);
                f5890j.put("beige", 16119260);
                f5890j.put("bisque", 16770244);
                f5890j.put("black", 0);
                f5890j.put("blanchedalmond", 16772045);
                f5890j.put("blue", 255);
                f5890j.put("blueviolet", 9055202);
                f5890j.put("brown", 10824234);
                f5890j.put("burlywood", 14596231);
                f5890j.put("cadetblue", 6266528);
                f5890j.put("chartreuse", 8388352);
                f5890j.put("chocolate", 13789470);
                f5890j.put("coral", 16744272);
                f5890j.put("cornflowerblue", 6591981);
                f5890j.put("cornsilk", 16775388);
                f5890j.put("crimson", 14423100);
                f5890j.put("cyan", 65535);
                f5890j.put("darkblue", Integer.valueOf((int) CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA));
                f5890j.put("darkcyan", 35723);
                f5890j.put("darkgoldenrod", 12092939);
                f5890j.put("darkgray", 11119017);
                f5890j.put("darkgreen", 25600);
                f5890j.put("darkgrey", 11119017);
                f5890j.put("darkkhaki", 12433259);
                f5890j.put("darkmagenta", 9109643);
                f5890j.put("darkolivegreen", 5597999);
                f5890j.put("darkorange", 16747520);
                f5890j.put("darkorchid", 10040012);
                f5890j.put("darkred", 9109504);
                f5890j.put("darksalmon", 15308410);
                f5890j.put("darkseagreen", 9419919);
                f5890j.put("darkslateblue", 4734347);
                f5890j.put("darkslategray", 3100495);
                f5890j.put("darkslategrey", 3100495);
                f5890j.put("darkturquoise", 52945);
                f5890j.put("darkviolet", 9699539);
                f5890j.put("deeppink", 16716947);
                f5890j.put("deepskyblue", 49151);
                f5890j.put("dimgray", 6908265);
                f5890j.put("dimgrey", 6908265);
                f5890j.put("dodgerblue", 2003199);
                f5890j.put("firebrick", 11674146);
                f5890j.put("floralwhite", 16775920);
                f5890j.put("forestgreen", 2263842);
                f5890j.put("fuchsia", 16711935);
                f5890j.put("gainsboro", 14474460);
                f5890j.put("ghostwhite", 16316671);
                f5890j.put("gold", 16766720);
                f5890j.put("goldenrod", 14329120);
                f5890j.put("gray", 8421504);
                f5890j.put("green", 32768);
                f5890j.put("greenyellow", 11403055);
                f5890j.put("grey", 8421504);
                f5890j.put("honeydew", 15794160);
                f5890j.put("hotpink", 16738740);
                f5890j.put("indianred", 13458524);
                f5890j.put("indigo", 4915330);
                f5890j.put("ivory", 16777200);
                f5890j.put("khaki", 15787660);
                f5890j.put("lavender", 15132410);
                f5890j.put("lavenderblush", 16773365);
                f5890j.put("lawngreen", 8190976);
                f5890j.put("lemonchiffon", 16775885);
                f5890j.put("lightblue", 11393254);
                f5890j.put("lightcoral", 15761536);
                f5890j.put("lightcyan", 14745599);
                f5890j.put("lightgoldenrodyellow", 16448210);
                f5890j.put("lightgray", 13882323);
                f5890j.put("lightgreen", 9498256);
                f5890j.put("lightgrey", 13882323);
                f5890j.put("lightpink", 16758465);
                f5890j.put("lightsalmon", 16752762);
                f5890j.put("lightseagreen", 2142890);
                f5890j.put("lightskyblue", 8900346);
                f5890j.put("lightslategray", 7833753);
                f5890j.put("lightslategrey", 7833753);
                f5890j.put("lightsteelblue", 11584734);
                f5890j.put("lightyellow", 16777184);
                f5890j.put("lime", 65280);
                f5890j.put("limegreen", 3329330);
                f5890j.put("linen", 16445670);
                f5890j.put("magenta", 16711935);
                f5890j.put("maroon", 8388608);
                f5890j.put("mediumaquamarine", 6737322);
                f5890j.put("mediumblue", 205);
                f5890j.put("mediumorchid", 12211667);
                f5890j.put("mediumpurple", 9662683);
                f5890j.put("mediumseagreen", 3978097);
                f5890j.put("mediumslateblue", 8087790);
                f5890j.put("mediumspringgreen", 64154);
                f5890j.put("mediumturquoise", 4772300);
                f5890j.put("mediumvioletred", 13047173);
                f5890j.put("midnightblue", 1644912);
                f5890j.put("mintcream", 16121850);
                f5890j.put("mistyrose", 16770273);
                f5890j.put("moccasin", 16770229);
                f5890j.put("navajowhite", 16768685);
                f5890j.put("navy", 128);
                f5890j.put("oldlace", 16643558);
                f5890j.put("olive", 8421376);
                f5890j.put("olivedrab", 7048739);
                f5890j.put("orange", 16753920);
                f5890j.put("orangered", 16729344);
                f5890j.put("orchid", 14315734);
                f5890j.put("palegoldenrod", 15657130);
                f5890j.put("palegreen", 10025880);
                f5890j.put("paleturquoise", 11529966);
                f5890j.put("palevioletred", 14381203);
                f5890j.put("papayawhip", 16773077);
                f5890j.put("peachpuff", 16767673);
                f5890j.put("peru", 13468991);
                f5890j.put("pink", 16761035);
                f5890j.put("plum", 14524637);
                f5890j.put("powderblue", 11591910);
                f5890j.put("purple", 8388736);
                f5890j.put("red", 16711680);
                f5890j.put("rosybrown", 12357519);
                f5890j.put("royalblue", 4286945);
                f5890j.put("saddlebrown", 9127187);
                f5890j.put("salmon", 16416882);
                f5890j.put("sandybrown", 16032864);
                f5890j.put("seagreen", 3050327);
                f5890j.put("seashell", 16774638);
                f5890j.put("sienna", 10506797);
                f5890j.put("silver", 12632256);
                f5890j.put("skyblue", 8900331);
                f5890j.put("slateblue", 6970061);
                f5890j.put("slategray", 7372944);
                f5890j.put("slategrey", 7372944);
                f5890j.put("snow", 16775930);
                f5890j.put("springgreen", 65407);
                f5890j.put("steelblue", 4620980);
                f5890j.put("tan", 13808780);
                f5890j.put("teal", 32896);
                f5890j.put("thistle", 14204888);
                f5890j.put("tomato", 16737095);
                f5890j.put("turquoise", 4251856);
                f5890j.put("violet", 15631086);
                f5890j.put("wheat", 16113331);
                f5890j.put("white", 16777215);
                f5890j.put("whitesmoke", 16119285);
                f5890j.put("yellow", 16776960);
                f5890j.put("yellowgreen", 10145074);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: j0 */
    public static float m2576j0(String str) {
        float f;
        float m2598X = m2598X(str);
        if (m2598X < 0.0f) {
            f = 0.0f;
        } else {
            f = m2598X;
            if (m2598X > 1.0f) {
                f = 1.0f;
            }
        }
        return f;
    }

    /* renamed from: k */
    public static void m2575k() {
        synchronized (di0.class) {
            try {
                HashMap<String, zh0.p> hashMap = new HashMap<>(9);
                f5891k = hashMap;
                zh0.d1 d1Var = zh0.d1.h;
                hashMap.put("xx-small", new zh0.p(0.694f, d1Var));
                f5891k.put("x-small", new zh0.p(0.833f, d1Var));
                f5891k.put("small", new zh0.p(10.0f, d1Var));
                f5891k.put("medium", new zh0.p(12.0f, d1Var));
                f5891k.put("large", new zh0.p(14.4f, d1Var));
                f5891k.put("x-large", new zh0.p(17.3f, d1Var));
                f5891k.put("xx-large", new zh0.p(20.7f, d1Var));
                HashMap<String, zh0.p> hashMap2 = f5891k;
                zh0.d1 d1Var2 = zh0.d1.k;
                hashMap2.put("smaller", new zh0.p(83.33f, d1Var2));
                f5891k.put("larger", new zh0.p(120.0f, d1Var2));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: k0 */
    public static Boolean m2574k0(String str) {
        if ("visible".equals(str) || "auto".equals(str)) {
            return Boolean.TRUE;
        }
        if ("hidden".equals(str) || "scroll".equals(str)) {
            return Boolean.FALSE;
        }
        throw new SAXException("Invalid toverflow property: " + str);
    }

    /* renamed from: l */
    public static void m2573l() {
        synchronized (di0.class) {
            try {
                HashMap<String, Integer> hashMap = new HashMap<>(13);
                f5892l = hashMap;
                hashMap.put("normal", 400);
                f5892l.put(TtmlNode.BOLD, 700);
                f5892l.put("bolder", 1);
                f5892l.put("lighter", -1);
                f5892l.put(CustomEventNative.DEFAULT_TYPE, 100);
                f5892l.put("200", Integer.valueOf((int) DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE));
                f5892l.put("300", 300);
                f5892l.put("400", 400);
                f5892l.put("500", 500);
                f5892l.put("600", 600);
                f5892l.put("700", 700);
                f5892l.put("800", 800);
                f5892l.put("900", 900);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: l0 */
    public static zh0.o0 m2572l0(String str, String str2) {
        if (str.startsWith("url(")) {
            int indexOf = str.indexOf(")");
            if (indexOf == -1) {
                throw new SAXException("Bad " + str2 + " attribute. Unterminated url() reference");
            }
            String trim = str.substring(4, indexOf).trim();
            String trim2 = str.substring(indexOf + 1).trim();
            zh0.o0 o0Var = null;
            if (trim2.length() > 0) {
                o0Var = m2600V(trim2);
            }
            return new zh0.u(trim, o0Var);
        }
        return m2600V(str);
    }

    /* renamed from: m0 */
    public static zh0.w m2570m0(String str) {
        float f;
        float f2;
        StringBuilder sb;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        C1299d c1299d = new C1299d(str);
        zh0.w wVar = new zh0.w();
        if (c1299d.m2535g()) {
            return wVar;
        }
        int intValue = c1299d.m2531k().intValue();
        if (intValue != 77 && intValue != 109) {
            return wVar;
        }
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        float f16 = 0.0f;
        float f17 = 0.0f;
        while (true) {
            c1299d.m2518x();
            switch (intValue) {
                case 65:
                case 97:
                    float m2528n = c1299d.m2528n();
                    float m2538d = c1299d.m2538d(m2528n);
                    float m2538d2 = c1299d.m2538d(m2538d);
                    Boolean m2539c = c1299d.m2539c(m2538d2 == Float.NaN ? null : Float.valueOf(m2538d2));
                    Boolean m2539c2 = c1299d.m2539c(m2539c);
                    float m2538d3 = c1299d.m2538d(m2539c2 == null ? Float.NaN : 1.0f);
                    float m2538d4 = c1299d.m2538d(m2538d3);
                    if (m2538d4 != Float.NaN && m2528n >= 0.0f && m2538d >= 0.0f) {
                        float f18 = m2538d3;
                        float f19 = m2538d4;
                        if (intValue == 97) {
                            f18 = m2538d3 + f12;
                            f19 = m2538d4 + f14;
                        }
                        wVar.d(m2528n, m2538d, m2538d2, m2539c.booleanValue(), m2539c2.booleanValue(), f18, f19);
                        f15 = f19;
                        f = f19;
                        f2 = f18;
                        f12 = f18;
                        break;
                    }
                    break;
                case 67:
                case 99:
                    float m2528n2 = c1299d.m2528n();
                    float m2538d5 = c1299d.m2538d(m2528n2);
                    float m2538d6 = c1299d.m2538d(m2538d5);
                    float m2538d7 = c1299d.m2538d(m2538d6);
                    float m2538d8 = c1299d.m2538d(m2538d7);
                    float m2538d9 = c1299d.m2538d(m2538d8);
                    if (m2538d9 != Float.NaN) {
                        float f20 = m2528n2;
                        f3 = m2538d5;
                        float f21 = m2538d6;
                        f15 = m2538d7;
                        float f22 = m2538d8;
                        f6 = m2538d9;
                        if (intValue == 99) {
                            f22 = m2538d8 + f12;
                            f6 = m2538d9 + f14;
                            f20 = m2528n2 + f12;
                            f3 = m2538d5 + f14;
                            f21 = m2538d6 + f12;
                            f15 = m2538d7 + f14;
                        }
                        f7 = f21;
                        f5 = f22;
                        f4 = f20;
                        wVar.c(f4, f3, f7, f15, f5, f6);
                        f8 = f5;
                        f = f6;
                        f13 = f7;
                        f12 = f8;
                        f2 = f13;
                        break;
                    } else {
                        sb = new StringBuilder();
                        break;
                    }
                case 72:
                case 104:
                    float m2528n3 = c1299d.m2528n();
                    if (m2528n3 != Float.NaN) {
                        f8 = m2528n3;
                        if (intValue == 104) {
                            f8 = m2528n3 + f12;
                        }
                        wVar.e(f8, f14);
                        f13 = f8;
                        f = f14;
                        f12 = f8;
                        f2 = f13;
                        break;
                    } else {
                        sb = new StringBuilder();
                        break;
                    }
                case 76:
                case 108:
                    float m2528n4 = c1299d.m2528n();
                    float m2538d10 = c1299d.m2538d(m2528n4);
                    if (m2538d10 != Float.NaN) {
                        float f23 = m2528n4;
                        float f24 = m2538d10;
                        if (intValue == 108) {
                            f23 = m2528n4 + f12;
                            f24 = m2538d10 + f14;
                        }
                        f = f24;
                        wVar.e(f23, f);
                        f8 = f23;
                        f13 = f23;
                        f15 = f;
                        f12 = f8;
                        f2 = f13;
                        break;
                    } else {
                        sb = new StringBuilder();
                        break;
                    }
                case 77:
                case 109:
                    float m2528n5 = c1299d.m2528n();
                    float m2538d11 = c1299d.m2538d(m2528n5);
                    if (m2538d11 != Float.NaN) {
                        float f25 = m2528n5;
                        float f26 = m2538d11;
                        if (intValue == 109) {
                            f25 = m2528n5;
                            f26 = m2538d11;
                            if (!wVar.i()) {
                                f25 = m2528n5 + f12;
                                f26 = m2538d11 + f14;
                            }
                        }
                        f = f26;
                        wVar.b(f25, f);
                        intValue = intValue == 109 ? 108 : 76;
                        f13 = f25;
                        f16 = f13;
                        f15 = f;
                        f8 = f25;
                        f17 = f15;
                        f12 = f8;
                        f2 = f13;
                        break;
                    } else {
                        sb = new StringBuilder();
                        break;
                    }
                case 81:
                case 113:
                    float m2528n6 = c1299d.m2528n();
                    float m2538d12 = c1299d.m2538d(m2528n6);
                    float m2538d13 = c1299d.m2538d(m2538d12);
                    float m2538d14 = c1299d.m2538d(m2538d13);
                    if (m2538d14 != Float.NaN) {
                        f9 = m2528n6;
                        f15 = m2538d12;
                        f11 = m2538d13;
                        f10 = m2538d14;
                        if (intValue == 113) {
                            f11 = m2538d13 + f12;
                            f10 = m2538d14 + f14;
                            f9 = m2528n6 + f12;
                            f15 = m2538d12 + f14;
                        }
                        float f27 = f10;
                        wVar.a(f9, f15, f11, f27);
                        f8 = f11;
                        f13 = f9;
                        f = f27;
                        f12 = f8;
                        f2 = f13;
                        break;
                    } else {
                        sb = new StringBuilder();
                        break;
                    }
                case 83:
                case 115:
                    float f28 = (f12 * 2.0f) - f13;
                    float m2528n7 = c1299d.m2528n();
                    float m2538d15 = c1299d.m2538d(m2528n7);
                    float m2538d16 = c1299d.m2538d(m2538d15);
                    float m2538d17 = c1299d.m2538d(m2538d16);
                    if (m2538d17 != Float.NaN) {
                        float f29 = m2528n7;
                        float f30 = m2538d15;
                        float f31 = m2538d16;
                        float f32 = m2538d17;
                        if (intValue == 115) {
                            f31 = m2538d16 + f12;
                            f32 = m2538d17 + f14;
                            f29 = m2528n7 + f12;
                            f30 = m2538d15 + f14;
                        }
                        f7 = f29;
                        f4 = f28;
                        f3 = (2.0f * f14) - f15;
                        f5 = f31;
                        f15 = f30;
                        f6 = f32;
                        wVar.c(f4, f3, f7, f15, f5, f6);
                        f8 = f5;
                        f = f6;
                        f13 = f7;
                        f12 = f8;
                        f2 = f13;
                        break;
                    } else {
                        sb = new StringBuilder();
                        break;
                    }
                case 84:
                case 116:
                    float f33 = (f12 * 2.0f) - f13;
                    float f34 = (2.0f * f14) - f15;
                    float m2528n8 = c1299d.m2528n();
                    float m2538d18 = c1299d.m2538d(m2528n8);
                    if (m2538d18 != Float.NaN) {
                        f9 = f33;
                        f15 = f34;
                        f11 = m2528n8;
                        f10 = m2538d18;
                        if (intValue == 116) {
                            f11 = m2528n8 + f12;
                            f10 = m2538d18 + f14;
                            f9 = f33;
                            f15 = f34;
                        }
                        float f272 = f10;
                        wVar.a(f9, f15, f11, f272);
                        f8 = f11;
                        f13 = f9;
                        f = f272;
                        f12 = f8;
                        f2 = f13;
                        break;
                    } else {
                        sb = new StringBuilder();
                        break;
                    }
                case 86:
                case 118:
                    float m2528n9 = c1299d.m2528n();
                    if (m2528n9 != Float.NaN) {
                        float f35 = m2528n9;
                        if (intValue == 118) {
                            f35 = m2528n9 + f14;
                        }
                        f = f35;
                        wVar.e(f12, f);
                        f8 = f12;
                        f15 = f;
                        f12 = f8;
                        f2 = f13;
                        break;
                    } else {
                        sb = new StringBuilder();
                        break;
                    }
                case 90:
                case 122:
                    wVar.close();
                    f8 = f16;
                    f13 = f8;
                    f = f17;
                    f15 = f;
                    f12 = f8;
                    f2 = f13;
                    break;
                default:
                    return wVar;
            }
            c1299d.m2519w();
            if (c1299d.m2535g()) {
                return wVar;
            }
            if (c1299d.m2534h()) {
                intValue = c1299d.m2531k().intValue();
            }
            f13 = f2;
            f14 = f;
        }
        sb.append("Bad path coords for ");
        sb.append((char) intValue);
        sb.append(" path segment");
        Log.e("SVGParser", sb.toString());
        return wVar;
    }

    /* renamed from: n0 */
    public static void m2568n0(zh0.p0 p0Var, String str) {
        if (f5893m == null) {
            m2579i();
        }
        C1299d c1299d = new C1299d(str);
        c1299d.m2518x();
        String m2524r = c1299d.m2524r();
        String str2 = m2524r;
        if ("defer".equals(m2524r)) {
            c1299d.m2518x();
            str2 = c1299d.m2524r();
        }
        yh0.a aVar = f5893m.get(str2);
        c1299d.m2518x();
        yh0.b bVar = null;
        if (!c1299d.m2535g()) {
            String m2524r2 = c1299d.m2524r();
            if (m2524r2.equals("meet")) {
                bVar = yh0.b.a;
            } else if (!m2524r2.equals("slice")) {
                throw new SAXException("Invalid preserveAspectRatio definition: " + str);
            } else {
                bVar = yh0.b.b;
            }
        }
        p0Var.n = new yh0(aVar, bVar);
    }

    /* renamed from: o0 */
    public static Set<String> m2566o0(String str) {
        C1299d c1299d = new C1299d(str);
        HashSet hashSet = new HashSet();
        while (!c1299d.m2535g()) {
            String m2524r = c1299d.m2524r();
            hashSet.add(m2524r.startsWith("http://www.w3.org/TR/SVG11/feature#") ? m2524r.substring(35) : "UNSUPPORTED");
            c1299d.m2518x();
        }
        return hashSet;
    }

    /* renamed from: p0 */
    public static Set<String> m2564p0(String str) {
        C1299d c1299d = new C1299d(str);
        HashSet hashSet = new HashSet();
        while (!c1299d.m2535g()) {
            hashSet.add(c1299d.m2524r());
            c1299d.m2518x();
        }
        return hashSet;
    }

    /* renamed from: q0 */
    public static zh0.p[] m2562q0(String str) {
        zh0.p m2526p;
        C1299d c1299d = new C1299d(str);
        c1299d.m2518x();
        if (!c1299d.m2535g() && (m2526p = c1299d.m2526p()) != null) {
            if (m2526p.i()) {
                throw new SAXException("Invalid stroke-dasharray. Dash segemnts cannot be negative: " + str);
            }
            float b = m2526p.b();
            ArrayList arrayList = new ArrayList();
            arrayList.add(m2526p);
            while (!c1299d.m2535g()) {
                c1299d.m2519w();
                zh0.p m2526p2 = c1299d.m2526p();
                if (m2526p2 == null) {
                    throw new SAXException("Invalid stroke-dasharray. Non-Length content found: " + str);
                } else if (m2526p2.i()) {
                    throw new SAXException("Invalid stroke-dasharray. Dash segemnts cannot be negative: " + str);
                } else {
                    arrayList.add(m2526p2);
                    b += m2526p2.b();
                }
            }
            if (b != 0.0f) {
                return (zh0.p[]) arrayList.toArray(new zh0.p[arrayList.size()]);
            }
            return null;
        }
        return null;
    }

    /* renamed from: r0 */
    public static zh0.e0.c m2560r0(String str) {
        if ("butt".equals(str)) {
            return zh0.e0.c.a;
        }
        if ("round".equals(str)) {
            return zh0.e0.c.b;
        }
        if ("square".equals(str)) {
            return zh0.e0.c.c;
        }
        throw new SAXException("Invalid stroke-linecap property: " + str);
    }

    /* renamed from: s0 */
    public static zh0.e0.d m2558s0(String str) {
        if ("miter".equals(str)) {
            return zh0.e0.d.a;
        }
        if ("round".equals(str)) {
            return zh0.e0.d.b;
        }
        if ("bevel".equals(str)) {
            return zh0.e0.d.c;
        }
        throw new SAXException("Invalid stroke-linejoin property: " + str);
    }

    /* renamed from: t0 */
    public static void m2556t0(zh0.l0 l0Var, String str) {
        C1299d c1299d = new C1299d(str.replaceAll("/\\*.*?\\*/", ""));
        while (true) {
            String m2523s = c1299d.m2523s(':');
            c1299d.m2518x();
            if (!c1299d.m2537e(':')) {
                return;
            }
            c1299d.m2518x();
            String m2523s2 = c1299d.m2523s(';');
            if (m2523s2 == null) {
                return;
            }
            c1299d.m2518x();
            if (c1299d.m2535g() || c1299d.m2537e(';')) {
                if (l0Var.f == null) {
                    l0Var.f = new zh0.e0();
                }
                m2630F0(l0Var.f, m2523s, m2523s2);
                c1299d.m2518x();
            }
        }
    }

    /* renamed from: u0 */
    public static Set<String> m2554u0(String str) {
        C1299d c1299d = new C1299d(str);
        HashSet hashSet = new HashSet();
        while (!c1299d.m2535g()) {
            String m2524r = c1299d.m2524r();
            int indexOf = m2524r.indexOf(45);
            String str2 = m2524r;
            if (indexOf != -1) {
                str2 = m2524r.substring(0, indexOf);
            }
            hashSet.add(new Locale(str2, "", "").getLanguage());
            c1299d.m2518x();
        }
        return hashSet;
    }

    /* renamed from: v0 */
    public static zh0.e0.e m2552v0(String str) {
        if (TtmlNode.START.equals(str)) {
            return zh0.e0.e.a;
        }
        if ("middle".equals(str)) {
            return zh0.e0.e.b;
        }
        if (TtmlNode.END.equals(str)) {
            return zh0.e0.e.c;
        }
        throw new SAXException("Invalid text-anchor property: " + str);
    }

    /* renamed from: w0 */
    public static zh0.e0.f m2550w0(String str) {
        if ("none".equals(str)) {
            return zh0.e0.f.a;
        }
        if (TtmlNode.UNDERLINE.equals(str)) {
            return zh0.e0.f.b;
        }
        if ("overline".equals(str)) {
            return zh0.e0.f.c;
        }
        if ("line-through".equals(str)) {
            return zh0.e0.f.d;
        }
        if ("blink".equals(str)) {
            return zh0.e0.f.f;
        }
        throw new SAXException("Invalid text-decoration property: " + str);
    }

    /* renamed from: x0 */
    public static zh0.e0.g m2548x0(String str) {
        if ("ltr".equals(str)) {
            return zh0.e0.g.a;
        }
        if ("rtl".equals(str)) {
            return zh0.e0.g.b;
        }
        throw new SAXException("Invalid direction property: " + str);
    }

    /* renamed from: z0 */
    public static zh0.e0.h m2544z0(String str) {
        if ("none".equals(str)) {
            return zh0.e0.h.a;
        }
        if ("non-scaling-stroke".equals(str)) {
            return zh0.e0.h.b;
        }
        throw new SAXException("Invalid vector-effect property: " + str);
    }

    /* renamed from: A */
    public final void m2641A(zh0.r rVar, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()]) {
                case 26:
                    rVar.q = m2582g0(trim);
                    break;
                case 27:
                    rVar.r = m2582g0(trim);
                    break;
                case 28:
                    zh0.p m2582g0 = m2582g0(trim);
                    rVar.s = m2582g0;
                    if (m2582g0.i()) {
                        throw new SAXException("Invalid <marker> element. markerWidth cannot be negative");
                    }
                    break;
                case 29:
                    zh0.p m2582g02 = m2582g0(trim);
                    rVar.t = m2582g02;
                    if (m2582g02.i()) {
                        throw new SAXException("Invalid <marker> element. markerHeight cannot be negative");
                    }
                    break;
                case 30:
                    if (!"strokeWidth".equals(trim)) {
                        if ("userSpaceOnUse".equals(trim)) {
                            rVar.p = true;
                            break;
                        } else {
                            throw new SAXException("Invalid value for attribute markerUnits");
                        }
                    } else {
                        rVar.p = false;
                        break;
                    }
                case 31:
                    rVar.u = Float.valueOf("auto".equals(trim) ? Float.NaN : m2598X(trim));
                    break;
            }
        }
    }

    /* renamed from: B */
    public final void m2639B(zh0.s sVar, Attributes attributes) {
        Boolean bool;
        Boolean bool2;
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()];
            if (i2 == 1) {
                sVar.p = m2582g0(trim);
            } else if (i2 == 2) {
                sVar.q = m2582g0(trim);
            } else if (i2 == 3) {
                zh0.p m2582g0 = m2582g0(trim);
                sVar.r = m2582g0;
                if (m2582g0.i()) {
                    throw new SAXException("Invalid <mask> element. width cannot be negative");
                }
            } else if (i2 == 4) {
                zh0.p m2582g02 = m2582g0(trim);
                sVar.s = m2582g02;
                if (m2582g02.i()) {
                    throw new SAXException("Invalid <mask> element. height cannot be negative");
                }
            } else if (i2 == 43) {
                if ("objectBoundingBox".equals(trim)) {
                    bool = Boolean.FALSE;
                } else if (!"userSpaceOnUse".equals(trim)) {
                    throw new SAXException("Invalid value for attribute maskUnits");
                } else {
                    bool = Boolean.TRUE;
                }
                sVar.n = bool;
            } else if (i2 == 44) {
                if ("objectBoundingBox".equals(trim)) {
                    bool2 = Boolean.FALSE;
                } else if (!"userSpaceOnUse".equals(trim)) {
                    throw new SAXException("Invalid value for attribute maskContentUnits");
                } else {
                    bool2 = Boolean.TRUE;
                }
                sVar.o = bool2;
            } else {
                continue;
            }
        }
    }

    /* renamed from: B0 */
    public final void m2638B0(Attributes attributes) {
        m2591c("<path>", new Object[0]);
        zh0.j0 j0Var = this.f5895b;
        if (j0Var != null) {
            zh0.v vVar = new zh0.v();
            ((zh0.n0) vVar).a = this.f5894a;
            ((zh0.n0) vVar).b = j0Var;
            m2555u(vVar, attributes);
            m2623J(vVar, attributes);
            m2615N(vVar, attributes);
            m2557t(vVar, attributes);
            m2637C(vVar, attributes);
            this.f5895b.f(vVar);
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: C */
    public final void m2637C(zh0.v vVar, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()];
            if (i2 == 8) {
                vVar.o = m2570m0(trim);
            } else if (i2 != 9) {
                continue;
            } else {
                Float valueOf = Float.valueOf(m2598X(trim));
                vVar.p = valueOf;
                if (valueOf.floatValue() < 0.0f) {
                    throw new SAXException("Invalid <path> element. pathLength cannot be negative");
                }
            }
        }
    }

    /* renamed from: C0 */
    public final void m2636C0(Attributes attributes) {
        m2591c("<pattern>", new Object[0]);
        if (this.f5895b != null) {
            zh0.y yVar = new zh0.y();
            ((zh0.n0) yVar).a = this.f5894a;
            ((zh0.n0) yVar).b = this.f5895b;
            m2555u(yVar, attributes);
            m2623J(yVar, attributes);
            m2557t(yVar, attributes);
            m2611P(yVar, attributes);
            m2635D(yVar, attributes);
            this.f5895b.f(yVar);
            this.f5895b = yVar;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x015d, code lost:
        continue;
     */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2635D(zh0.y r5, org.xml.sax.Attributes r6) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.di0.m2635D(zh0$y, org.xml.sax.Attributes):void");
    }

    /* renamed from: D0 */
    public final void m2634D0(Attributes attributes) {
        m2591c("<polygon>", new Object[0]);
        zh0.j0 j0Var = this.f5895b;
        if (j0Var != null) {
            zh0.a0 a0Var = new zh0.a0();
            ((zh0.n0) a0Var).a = this.f5894a;
            ((zh0.n0) a0Var).b = j0Var;
            m2555u(a0Var, attributes);
            m2623J(a0Var, attributes);
            m2615N(a0Var, attributes);
            m2557t(a0Var, attributes);
            m2633E(a0Var, attributes, "polygon");
            this.f5895b.f(a0Var);
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: E */
    public final void m2633E(zh0.z zVar, Attributes attributes, String str) {
        for (int i = 0; i < attributes.getLength(); i++) {
            if (EnumC1297b.m2543a(attributes.getLocalName(i)) == EnumC1297b.points) {
                C1299d c1299d = new C1299d(attributes.getValue(i));
                ArrayList<Float> arrayList = new ArrayList();
                c1299d.m2518x();
                while (!c1299d.m2535g()) {
                    Float m2529m = c1299d.m2529m();
                    if (m2529m == null) {
                        throw new SAXException("Invalid <" + str + "> points attribute. Non-coordinate content found in list.");
                    }
                    c1299d.m2519w();
                    Float m2529m2 = c1299d.m2529m();
                    if (m2529m2 == null) {
                        throw new SAXException("Invalid <" + str + "> points attribute. There should be an even number of coordinates.");
                    }
                    c1299d.m2519w();
                    arrayList.add(m2529m);
                    arrayList.add(m2529m2);
                }
                zVar.o = new float[arrayList.size()];
                int i2 = 0;
                for (Float f : arrayList) {
                    zVar.o[i2] = f.floatValue();
                    i2++;
                }
            }
        }
    }

    /* renamed from: E0 */
    public final void m2632E0(Attributes attributes) {
        m2591c("<polyline>", new Object[0]);
        zh0.j0 j0Var = this.f5895b;
        if (j0Var != null) {
            zh0.z zVar = new zh0.z();
            ((zh0.n0) zVar).a = this.f5894a;
            ((zh0.n0) zVar).b = j0Var;
            m2555u(zVar, attributes);
            m2623J(zVar, attributes);
            m2615N(zVar, attributes);
            m2557t(zVar, attributes);
            m2633E(zVar, attributes, "polyline");
            this.f5895b.f(zVar);
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a7, code lost:
        continue;
     */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2631F(zh0.q0 r5, org.xml.sax.Attributes r6) {
        /*
            r4 = this;
            r0 = 0
            r7 = r0
        L2:
            r0 = r7
            r1 = r6
            int r1 = r1.getLength()
            if (r0 >= r1) goto Lad
            r0 = r6
            r1 = r7
            java.lang.String r0 = r0.getValue(r1)
            java.lang.String r0 = r0.trim()
            r8 = r0
            int[] r0 = p000.di0.C1296a.f5904b
            r1 = r6
            r2 = r7
            java.lang.String r1 = r1.getLocalName(r2)
            di0$b r1 = p000.di0.EnumC1297b.m2543a(r1)
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r9 = r0
            r0 = r9
            r1 = 35
            if (r0 == r1) goto L9e
            r0 = r9
            r1 = 36
            if (r0 == r1) goto L92
            r0 = r9
            switch(r0) {
                case 12: goto L86;
                case 13: goto L7a;
                case 14: goto L57;
                default: goto L54;
            }
        L54:
            goto La7
        L57:
            r0 = r8
            zh0$p r0 = m2582g0(r0)
            r8 = r0
            r0 = r5
            r1 = r8
            r0.o = r1
            r0 = r8
            boolean r0 = r0.i()
            if (r0 != 0) goto L6f
            goto La7
        L6f:
            org.xml.sax.SAXException r0 = new org.xml.sax.SAXException
            r1 = r0
            java.lang.String r2 = "Invalid <radialGradient> element. r cannot be negative"
            r1.<init>(r2)
            throw r0
        L7a:
            r0 = r5
            r1 = r8
            zh0$p r1 = m2582g0(r1)
            r0.n = r1
            goto La7
        L86:
            r0 = r5
            r1 = r8
            zh0$p r1 = m2582g0(r1)
            r0.m = r1
            goto La7
        L92:
            r0 = r5
            r1 = r8
            zh0$p r1 = m2582g0(r1)
            r0.q = r1
            goto La7
        L9e:
            r0 = r5
            r1 = r8
            zh0$p r1 = m2582g0(r1)
            r0.p = r1
        La7:
            int r7 = r7 + 1
            goto L2
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.di0.m2631F(zh0$q0, org.xml.sax.Attributes):void");
    }

    /* renamed from: G */
    public final void m2629G(zh0.b0 b0Var, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()];
            if (i2 == 1) {
                b0Var.o = m2582g0(trim);
            } else if (i2 == 2) {
                b0Var.p = m2582g0(trim);
            } else if (i2 == 3) {
                zh0.p m2582g0 = m2582g0(trim);
                b0Var.q = m2582g0;
                if (m2582g0.i()) {
                    throw new SAXException("Invalid <rect> element. width cannot be negative");
                }
            } else if (i2 == 4) {
                zh0.p m2582g02 = m2582g0(trim);
                b0Var.r = m2582g02;
                if (m2582g02.i()) {
                    throw new SAXException("Invalid <rect> element. height cannot be negative");
                }
            } else if (i2 == 10) {
                zh0.p m2582g03 = m2582g0(trim);
                b0Var.s = m2582g03;
                if (m2582g03.i()) {
                    throw new SAXException("Invalid <rect> element. rx cannot be negative");
                }
            } else if (i2 != 11) {
                continue;
            } else {
                zh0.p m2582g04 = m2582g0(trim);
                b0Var.t = m2582g04;
                if (m2582g04.i()) {
                    throw new SAXException("Invalid <rect> element. ry cannot be negative");
                }
            }
        }
    }

    /* renamed from: G0 */
    public final void m2628G0(Attributes attributes) {
        m2591c("<radialGradient>", new Object[0]);
        if (this.f5895b != null) {
            zh0.q0 q0Var = new zh0.q0();
            ((zh0.n0) q0Var).a = this.f5894a;
            ((zh0.n0) q0Var).b = this.f5895b;
            m2555u(q0Var, attributes);
            m2623J(q0Var, attributes);
            m2551w(q0Var, attributes);
            m2631F(q0Var, attributes);
            this.f5895b.f(q0Var);
            this.f5895b = q0Var;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: H */
    public final void m2627H(zh0.f0 f0Var, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()];
            if (i2 == 1) {
                f0Var.p = m2582g0(trim);
            } else if (i2 == 2) {
                f0Var.q = m2582g0(trim);
            } else if (i2 == 3) {
                zh0.p m2582g0 = m2582g0(trim);
                f0Var.r = m2582g0;
                if (m2582g0.i()) {
                    throw new SAXException("Invalid <svg> element. width cannot be negative");
                }
            } else if (i2 == 4) {
                zh0.p m2582g02 = m2582g0(trim);
                f0Var.s = m2582g02;
                if (m2582g02.i()) {
                    throw new SAXException("Invalid <svg> element. height cannot be negative");
                }
            } else if (i2 == 5) {
                f0Var.t = trim;
            }
        }
    }

    /* renamed from: H0 */
    public final void m2626H0(Attributes attributes) {
        m2591c("<rect>", new Object[0]);
        zh0.j0 j0Var = this.f5895b;
        if (j0Var != null) {
            zh0.b0 b0Var = new zh0.b0();
            ((zh0.n0) b0Var).a = this.f5894a;
            ((zh0.n0) b0Var).b = j0Var;
            m2555u(b0Var, attributes);
            m2623J(b0Var, attributes);
            m2615N(b0Var, attributes);
            m2557t(b0Var, attributes);
            m2629G(b0Var, attributes);
            this.f5895b.f(b0Var);
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: I */
    public final void m2625I(zh0.d0 d0Var, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            if (C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()] == 37) {
                d0Var.h = m2584f0(trim);
            }
        }
    }

    /* renamed from: I0 */
    public final void m2624I0(Attributes attributes) {
        m2591c("<solidColor>", new Object[0]);
        zh0.j0 j0Var = this.f5895b;
        if (j0Var != null) {
            zh0.c0 c0Var = new zh0.c0();
            ((zh0.n0) c0Var).a = this.f5894a;
            ((zh0.n0) c0Var).b = j0Var;
            m2555u(c0Var, attributes);
            m2623J(c0Var, attributes);
            this.f5895b.f(c0Var);
            this.f5895b = c0Var;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: J */
    public final void m2623J(zh0.l0 l0Var, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            if (trim.length() != 0) {
                int i2 = C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()];
                if (i2 == 45) {
                    m2556t0(l0Var, trim);
                } else if (i2 != 46) {
                    if (l0Var.e == null) {
                        l0Var.e = new zh0.e0();
                    }
                    m2630F0(l0Var.e, attributes.getLocalName(i), attributes.getValue(i).trim());
                } else {
                    l0Var.g = uh0.f(trim);
                }
            }
        }
    }

    /* renamed from: J0 */
    public final void m2622J0(Attributes attributes) {
        m2591c("<stop>", new Object[0]);
        zh0.j0 j0Var = this.f5895b;
        if (j0Var != null) {
            if (!(j0Var instanceof zh0.j)) {
                throw new SAXException("Invalid document. <stop> elements are only valid inside <linearGradiant> or <radialGradient> elements.");
            }
            zh0.d0 d0Var = new zh0.d0();
            ((zh0.n0) d0Var).a = this.f5894a;
            ((zh0.n0) d0Var).b = j0Var;
            m2555u(d0Var, attributes);
            m2623J(d0Var, attributes);
            m2625I(d0Var, attributes);
            this.f5895b.f(d0Var);
            this.f5895b = d0Var;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: K */
    public final void m2621K(zh0.u0 u0Var, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            if (C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()] == 6 && "http://www.w3.org/1999/xlink".equals(attributes.getURI(i))) {
                u0Var.n = trim;
            }
        }
    }

    /* renamed from: K0 */
    public final void m2620K0(Attributes attributes) {
        m2591c("<style>", new Object[0]);
        if (this.f5895b != null) {
            String str = "all";
            boolean z = true;
            for (int i = 0; i < attributes.getLength(); i++) {
                String trim = attributes.getValue(i).trim();
                int i2 = C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()];
                if (i2 == 87) {
                    z = trim.equals("text/css");
                } else if (i2 == 88) {
                    str = trim;
                }
            }
            if (z && uh0.b(str, uh0.f.j)) {
                this.f5901h = true;
                return;
            }
            this.f5896c = true;
            this.f5897d = 1;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: L */
    public final void m2619L(zh0.z0 z0Var, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()];
            if (i2 != 6) {
                if (i2 == 39) {
                    z0Var.o = m2582g0(trim);
                }
            } else if ("http://www.w3.org/1999/xlink".equals(attributes.getURI(i))) {
                z0Var.n = trim;
            }
        }
    }

    /* renamed from: L0 */
    public final void m2618L0(Attributes attributes) {
        m2591c("<svg>", new Object[0]);
        zh0.f0 f0Var = new zh0.f0();
        ((zh0.n0) f0Var).a = this.f5894a;
        ((zh0.n0) f0Var).b = this.f5895b;
        m2555u(f0Var, attributes);
        m2623J(f0Var, attributes);
        m2557t(f0Var, attributes);
        m2611P(f0Var, attributes);
        m2627H(f0Var, attributes);
        zh0.j0 j0Var = this.f5895b;
        if (j0Var == null) {
            this.f5894a.q(f0Var);
        } else {
            j0Var.f(f0Var);
        }
        this.f5895b = f0Var;
    }

    /* renamed from: M */
    public final void m2617M(zh0.a1 a1Var, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()];
            if (i2 == 1) {
                a1Var.n = m2580h0(trim);
            } else if (i2 == 2) {
                a1Var.o = m2580h0(trim);
            } else if (i2 == 19) {
                a1Var.p = m2580h0(trim);
            } else if (i2 == 20) {
                a1Var.q = m2580h0(trim);
            }
        }
    }

    /* renamed from: M0 */
    public final void m2616M0(Attributes attributes) {
        m2591c("<symbol>", new Object[0]);
        if (this.f5895b != null) {
            zh0.t0 t0Var = new zh0.t0();
            ((zh0.n0) t0Var).a = this.f5894a;
            ((zh0.n0) t0Var).b = this.f5895b;
            m2555u(t0Var, attributes);
            m2623J(t0Var, attributes);
            m2557t(t0Var, attributes);
            m2611P(t0Var, attributes);
            this.f5895b.f(t0Var);
            this.f5895b = t0Var;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: N */
    public final void m2615N(zh0.n nVar, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            if (EnumC1297b.m2543a(attributes.getLocalName(i)) == EnumC1297b.transform) {
                nVar.i(m2546y0(attributes.getValue(i)));
            }
        }
    }

    /* renamed from: N0 */
    public final void m2614N0(Attributes attributes) {
        m2591c("<text>", new Object[0]);
        if (this.f5895b != null) {
            zh0.w0 w0Var = new zh0.w0();
            ((zh0.n0) w0Var).a = this.f5894a;
            ((zh0.n0) w0Var).b = this.f5895b;
            m2555u(w0Var, attributes);
            m2623J(w0Var, attributes);
            m2615N(w0Var, attributes);
            m2557t(w0Var, attributes);
            m2617M(w0Var, attributes);
            this.f5895b.f(w0Var);
            this.f5895b = w0Var;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: O */
    public final void m2613O(zh0.e1 e1Var, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()];
            if (i2 == 1) {
                e1Var.p = m2582g0(trim);
            } else if (i2 == 2) {
                e1Var.q = m2582g0(trim);
            } else if (i2 == 3) {
                zh0.p m2582g0 = m2582g0(trim);
                e1Var.r = m2582g0;
                if (m2582g0.i()) {
                    throw new SAXException("Invalid <use> element. width cannot be negative");
                }
            } else if (i2 == 4) {
                zh0.p m2582g02 = m2582g0(trim);
                e1Var.s = m2582g02;
                if (m2582g02.i()) {
                    throw new SAXException("Invalid <use> element. height cannot be negative");
                }
            } else if (i2 == 6 && "http://www.w3.org/1999/xlink".equals(attributes.getURI(i))) {
                e1Var.o = trim;
            }
        }
    }

    /* renamed from: O0 */
    public final void m2612O0(Attributes attributes) {
        m2591c("<textPath>", new Object[0]);
        if (this.f5895b != null) {
            zh0.z0 z0Var = new zh0.z0();
            ((zh0.n0) z0Var).a = this.f5894a;
            ((zh0.n0) z0Var).b = this.f5895b;
            m2555u(z0Var, attributes);
            m2623J(z0Var, attributes);
            m2557t(z0Var, attributes);
            m2619L(z0Var, attributes);
            this.f5895b.f(z0Var);
            this.f5895b = z0Var;
            zh0.x0 x0Var = ((zh0.n0) z0Var).b;
            z0Var.l(x0Var instanceof zh0.b1 ? (zh0.b1) x0Var : x0Var.c());
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: P */
    public final void m2611P(zh0.r0 r0Var, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()];
            if (i2 == 7) {
                m2568n0(r0Var, trim);
            } else if (i2 == 86) {
                r0Var.o = m2640A0(trim);
            }
        }
    }

    /* renamed from: P0 */
    public final void m2610P0(Attributes attributes) {
        m2591c("<tref>", new Object[0]);
        zh0.j0 j0Var = this.f5895b;
        if (j0Var != null) {
            if (!(j0Var instanceof zh0.y0)) {
                throw new SAXException("Invalid document. <tref> elements are only valid inside <text> or <tspan> elements.");
            }
            zh0.u0 u0Var = new zh0.u0();
            ((zh0.n0) u0Var).a = this.f5894a;
            ((zh0.n0) u0Var).b = this.f5895b;
            m2555u(u0Var, attributes);
            m2623J(u0Var, attributes);
            m2557t(u0Var, attributes);
            m2621K(u0Var, attributes);
            this.f5895b.f(u0Var);
            zh0.x0 x0Var = ((zh0.n0) u0Var).b;
            u0Var.l(x0Var instanceof zh0.b1 ? (zh0.b1) x0Var : x0Var.c());
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: Q */
    public final void m2609Q(String str) {
        this.f5894a.a(new uh0(uh0.f.j).d(str));
    }

    /* renamed from: Q0 */
    public final void m2608Q0(Attributes attributes) {
        m2591c("<tspan>", new Object[0]);
        zh0.j0 j0Var = this.f5895b;
        if (j0Var != null) {
            if (!(j0Var instanceof zh0.y0)) {
                throw new SAXException("Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements.");
            }
            zh0.v0 v0Var = new zh0.v0();
            ((zh0.n0) v0Var).a = this.f5894a;
            ((zh0.n0) v0Var).b = this.f5895b;
            m2555u(v0Var, attributes);
            m2623J(v0Var, attributes);
            m2557t(v0Var, attributes);
            m2617M(v0Var, attributes);
            this.f5895b.f(v0Var);
            this.f5895b = v0Var;
            zh0.x0 x0Var = ((zh0.n0) v0Var).b;
            v0Var.l(x0Var instanceof zh0.b1 ? (zh0.b1) x0Var : x0Var.c());
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: R0 */
    public final void m2606R0(Attributes attributes) {
        m2591c("<use>", new Object[0]);
        if (this.f5895b != null) {
            zh0.e1 e1Var = new zh0.e1();
            ((zh0.n0) e1Var).a = this.f5894a;
            ((zh0.n0) e1Var).b = this.f5895b;
            m2555u(e1Var, attributes);
            m2623J(e1Var, attributes);
            m2615N(e1Var, attributes);
            m2557t(e1Var, attributes);
            m2613O(e1Var, attributes);
            this.f5895b.f(e1Var);
            this.f5895b = e1Var;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: S0 */
    public final void m2604S0(Attributes attributes) {
        m2591c("<view>", new Object[0]);
        if (this.f5895b != null) {
            zh0.f1 f1Var = new zh0.f1();
            ((zh0.n0) f1Var).a = this.f5894a;
            ((zh0.n0) f1Var).b = this.f5895b;
            m2555u(f1Var, attributes);
            m2557t(f1Var, attributes);
            m2611P(f1Var, attributes);
            this.f5895b.f(f1Var);
            this.f5895b = f1Var;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: T0 */
    public final void m2602T0(Attributes attributes) {
        m2591c("<switch>", new Object[0]);
        if (this.f5895b != null) {
            zh0.s0 s0Var = new zh0.s0();
            ((zh0.n0) s0Var).a = this.f5894a;
            ((zh0.n0) s0Var).b = this.f5895b;
            m2555u(s0Var, attributes);
            m2623J(s0Var, attributes);
            m2615N(s0Var, attributes);
            m2557t(s0Var, attributes);
            this.f5895b.f(s0Var);
            this.f5895b = s0Var;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: a */
    public final void m2595a(Attributes attributes) {
        m2591c("<circle>", new Object[0]);
        zh0.j0 j0Var = this.f5895b;
        if (j0Var != null) {
            zh0.d dVar = new zh0.d();
            ((zh0.n0) dVar).a = this.f5894a;
            ((zh0.n0) dVar).b = j0Var;
            m2555u(dVar, attributes);
            m2623J(dVar, attributes);
            m2615N(dVar, attributes);
            m2557t(dVar, attributes);
            m2561r(dVar, attributes);
            this.f5895b.f(dVar);
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: b */
    public final void m2593b(Attributes attributes) {
        m2591c("<clipPath>", new Object[0]);
        if (this.f5895b != null) {
            zh0.e eVar = new zh0.e();
            ((zh0.n0) eVar).a = this.f5894a;
            ((zh0.n0) eVar).b = this.f5895b;
            m2555u(eVar, attributes);
            m2623J(eVar, attributes);
            m2615N(eVar, attributes);
            m2557t(eVar, attributes);
            m2559s(eVar, attributes);
            this.f5895b.f(eVar);
            this.f5895b = eVar;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: c */
    public final void m2591c(String str, Object... objArr) {
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
        StringBuilder sb;
        if (this.f5896c) {
            return;
        }
        if (this.f5898e) {
            if (this.f5900g == null) {
                this.f5900g = new StringBuilder(i2);
            }
            sb = this.f5900g;
        } else if (!this.f5901h) {
            zh0.h0 h0Var = this.f5895b;
            if (!(h0Var instanceof zh0.y0)) {
                return;
            }
            zh0.h0 h0Var2 = h0Var;
            int size = h0Var2.i.size();
            zh0.c1 c1Var = size == 0 ? null : (zh0.n0) h0Var2.i.get(size - 1);
            if (!(c1Var instanceof zh0.c1)) {
                this.f5895b.f(new zh0.c1(new String(cArr, i, i2)));
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            zh0.c1 c1Var2 = c1Var;
            sb2.append(c1Var2.c);
            sb2.append(new String(cArr, i, i2));
            c1Var2.c = sb2.toString();
            return;
        } else {
            if (this.f5902i == null) {
                this.f5902i = new StringBuilder(i2);
            }
            sb = this.f5902i;
        }
        sb.append(cArr, i, i2);
    }

    @Override // org.xml.sax.ext.DefaultHandler2, org.xml.sax.ext.LexicalHandler
    public void comment(char[] cArr, int i, int i2) {
        if (!this.f5896c && this.f5901h) {
            if (this.f5902i == null) {
                this.f5902i = new StringBuilder(i2);
            }
            this.f5902i.append(cArr, i, i2);
        }
    }

    /* renamed from: d */
    public final void m2589d(Attributes attributes) {
        m2591c("<defs>", new Object[0]);
        if (this.f5895b != null) {
            zh0.h hVar = new zh0.h();
            ((zh0.n0) hVar).a = this.f5894a;
            ((zh0.n0) hVar).b = this.f5895b;
            m2555u(hVar, attributes);
            m2623J(hVar, attributes);
            m2615N(hVar, attributes);
            this.f5895b.f(hVar);
            this.f5895b = hVar;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: e */
    public final void m2587e(Attributes attributes) {
        m2591c("<ellipse>", new Object[0]);
        zh0.j0 j0Var = this.f5895b;
        if (j0Var != null) {
            zh0.i iVar = new zh0.i();
            ((zh0.n0) iVar).a = this.f5894a;
            ((zh0.n0) iVar).b = j0Var;
            m2555u(iVar, attributes);
            m2623J(iVar, attributes);
            m2615N(iVar, attributes);
            m2557t(iVar, attributes);
            m2553v(iVar, attributes);
            this.f5895b.f(iVar);
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() {
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        StringBuilder sb;
        if (this.f5896c) {
            int i = this.f5897d - 1;
            this.f5897d = i;
            if (i == 0) {
                this.f5896c = false;
                return;
            }
        }
        if ("http://www.w3.org/2000/svg".equals(str) || "".equals(str)) {
            int i2 = C1296a.f5903a[EnumC1298c.m2542a(str2).ordinal()];
            if (i2 != 1 && i2 != 2 && i2 != 4 && i2 != 5 && i2 != 13 && i2 != 14) {
                switch (i2) {
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 31:
                        break;
                    case 22:
                    case 23:
                        this.f5898e = false;
                        EnumC1298c enumC1298c = this.f5899f;
                        if (enumC1298c == EnumC1298c.title) {
                            this.f5894a.r(this.f5900g.toString());
                        } else if (enumC1298c == EnumC1298c.desc) {
                            this.f5894a.n(this.f5900g.toString());
                        }
                        sb = this.f5900g;
                        sb.setLength(0);
                        return;
                    case 30:
                        StringBuilder sb2 = this.f5902i;
                        if (sb2 == null) {
                            return;
                        }
                        this.f5901h = false;
                        m2609Q(sb2.toString());
                        sb = this.f5902i;
                        sb.setLength(0);
                        return;
                    default:
                        return;
                }
            }
            this.f5895b = this.f5895b.b;
        }
    }

    /* renamed from: f0 */
    public final Float m2584f0(String str) {
        if (str.length() != 0) {
            int length = str.length();
            boolean z = true;
            if (str.charAt(str.length() - 1) == '%') {
                length--;
            } else {
                z = false;
            }
            try {
                float m2597Y = m2597Y(str, 0, length);
                float f = m2597Y;
                if (z) {
                    f = m2597Y / 100.0f;
                }
                if (f < 0.0f) {
                    f = 0.0f;
                } else if (f > 100.0f) {
                    f = 100.0f;
                }
                return Float.valueOf(f);
            } catch (NumberFormatException e) {
                throw new SAXException("Invalid offset value in <stop>: " + str, e);
            }
        }
        throw new SAXException("Invalid offset value in <stop> (empty string)");
    }

    /* renamed from: g */
    public final void m2583g(Attributes attributes) {
        m2591c("<g>", new Object[0]);
        if (this.f5895b != null) {
            zh0.m mVar = new zh0.m();
            ((zh0.n0) mVar).a = this.f5894a;
            ((zh0.n0) mVar).b = this.f5895b;
            m2555u(mVar, attributes);
            m2623J(mVar, attributes);
            m2615N(mVar, attributes);
            m2557t(mVar, attributes);
            this.f5895b.f(mVar);
            this.f5895b = mVar;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: h */
    public final void m2581h(Attributes attributes) {
        m2591c("<image>", new Object[0]);
        if (this.f5895b != null) {
            zh0.o oVar = new zh0.o();
            ((zh0.n0) oVar).a = this.f5894a;
            ((zh0.n0) oVar).b = this.f5895b;
            m2555u(oVar, attributes);
            m2623J(oVar, attributes);
            m2615N(oVar, attributes);
            m2557t(oVar, attributes);
            m2549x(oVar, attributes);
            this.f5895b.f(oVar);
            this.f5895b = oVar;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: m */
    public final void m2571m(Attributes attributes) {
        m2591c("<line>", new Object[0]);
        zh0.j0 j0Var = this.f5895b;
        if (j0Var != null) {
            zh0.q qVar = new zh0.q();
            ((zh0.n0) qVar).a = this.f5894a;
            ((zh0.n0) qVar).b = j0Var;
            m2555u(qVar, attributes);
            m2623J(qVar, attributes);
            m2615N(qVar, attributes);
            m2557t(qVar, attributes);
            m2547y(qVar, attributes);
            this.f5895b.f(qVar);
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: n */
    public final void m2569n(Attributes attributes) {
        m2591c("<linearGradiant>", new Object[0]);
        if (this.f5895b != null) {
            zh0.m0 m0Var = new zh0.m0();
            ((zh0.n0) m0Var).a = this.f5894a;
            ((zh0.n0) m0Var).b = this.f5895b;
            m2555u(m0Var, attributes);
            m2623J(m0Var, attributes);
            m2551w(m0Var, attributes);
            m2545z(m0Var, attributes);
            this.f5895b.f(m0Var);
            this.f5895b = m0Var;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: o */
    public final void m2567o(Attributes attributes) {
        m2591c("<marker>", new Object[0]);
        if (this.f5895b != null) {
            zh0.r rVar = new zh0.r();
            ((zh0.n0) rVar).a = this.f5894a;
            ((zh0.n0) rVar).b = this.f5895b;
            m2555u(rVar, attributes);
            m2623J(rVar, attributes);
            m2557t(rVar, attributes);
            m2611P(rVar, attributes);
            m2641A(rVar, attributes);
            this.f5895b.f(rVar);
            this.f5895b = rVar;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* renamed from: p */
    public final void m2565p(Attributes attributes) {
        m2591c("<mask>", new Object[0]);
        if (this.f5895b != null) {
            zh0.s sVar = new zh0.s();
            ((zh0.n0) sVar).a = this.f5894a;
            ((zh0.n0) sVar).b = this.f5895b;
            m2555u(sVar, attributes);
            m2623J(sVar, attributes);
            m2557t(sVar, attributes);
            m2639B(sVar, attributes);
            this.f5895b.f(sVar);
            this.f5895b = sVar;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00f1 -> B:9:0x003e). Please submit an issue!!! */
    /* renamed from: q */
    public zh0 m2563q(InputStream inputStream) {
        InputStream inputStream2;
        BufferedInputStream bufferedInputStream = inputStream;
        if (!inputStream.markSupported()) {
            bufferedInputStream = new BufferedInputStream(inputStream);
        }
        try {
            bufferedInputStream.mark(3);
            int read = bufferedInputStream.read();
            int read2 = bufferedInputStream.read();
            bufferedInputStream.reset();
            inputStream2 = bufferedInputStream;
            if (read + (read2 << 8) == 35615) {
                inputStream2 = new GZIPInputStream(bufferedInputStream);
            }
        } catch (IOException e) {
            inputStream2 = bufferedInputStream;
        }
        try {
            try {
                try {
                    XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
                    xMLReader.setContentHandler(this);
                    xMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", this);
                    xMLReader.parse(new InputSource(inputStream2));
                    try {
                        inputStream2.close();
                    } catch (IOException e2) {
                        Log.e("SVGParser", "Exception thrown closing input stream");
                    }
                    return this.f5894a;
                } catch (Throwable th) {
                    try {
                        inputStream2.close();
                    } catch (IOException e3) {
                        Log.e("SVGParser", "Exception thrown closing input stream");
                    }
                    throw th;
                }
            } catch (IOException e4) {
                throw new ci0("File error", e4);
            }
        } catch (ParserConfigurationException e5) {
            throw new ci0("XML Parser problem", e5);
        } catch (SAXException e6) {
            throw new ci0("SVG parse error: " + e6.getMessage(), e6);
        }
    }

    /* renamed from: r */
    public final void m2561r(zh0.d dVar, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()]) {
                case 12:
                    dVar.o = m2582g0(trim);
                    break;
                case 13:
                    dVar.p = m2582g0(trim);
                    break;
                case 14:
                    zh0.p m2582g0 = m2582g0(trim);
                    dVar.q = m2582g0;
                    if (m2582g0.i()) {
                        throw new SAXException("Invalid <circle> element. r cannot be negative");
                    }
                    break;
            }
        }
    }

    /* renamed from: s */
    public final void m2559s(zh0.e eVar, Attributes attributes) {
        Boolean bool;
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            if (C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()] == 38) {
                if ("objectBoundingBox".equals(trim)) {
                    bool = Boolean.FALSE;
                } else if (!"userSpaceOnUse".equals(trim)) {
                    throw new SAXException("Invalid value for attribute clipPathUnits");
                } else {
                    bool = Boolean.TRUE;
                }
                eVar.o = bool;
            }
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() {
        this.f5894a = new zh0();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        if (this.f5896c) {
            this.f5897d++;
        } else if (!"http://www.w3.org/2000/svg".equals(str) && !"".equals(str)) {
        } else {
            EnumC1298c m2542a = EnumC1298c.m2542a(str2);
            switch (C1296a.f5903a[m2542a.ordinal()]) {
                case 1:
                    m2618L0(attributes);
                    return;
                case 2:
                case 3:
                    m2583g(attributes);
                    return;
                case 4:
                    m2589d(attributes);
                    return;
                case 5:
                    m2606R0(attributes);
                    return;
                case 6:
                    m2638B0(attributes);
                    return;
                case 7:
                    m2626H0(attributes);
                    return;
                case 8:
                    m2595a(attributes);
                    return;
                case 9:
                    m2587e(attributes);
                    return;
                case 10:
                    m2571m(attributes);
                    return;
                case 11:
                    m2632E0(attributes);
                    return;
                case 12:
                    m2634D0(attributes);
                    return;
                case 13:
                    m2614N0(attributes);
                    return;
                case 14:
                    m2608Q0(attributes);
                    return;
                case 15:
                    m2610P0(attributes);
                    return;
                case 16:
                    m2602T0(attributes);
                    return;
                case 17:
                    m2616M0(attributes);
                    return;
                case 18:
                    m2567o(attributes);
                    return;
                case 19:
                    m2569n(attributes);
                    return;
                case 20:
                    m2628G0(attributes);
                    return;
                case 21:
                    m2622J0(attributes);
                    return;
                case 22:
                case 23:
                    this.f5898e = true;
                    this.f5899f = m2542a;
                    return;
                case 24:
                    m2593b(attributes);
                    return;
                case 25:
                    m2612O0(attributes);
                    return;
                case 26:
                    m2636C0(attributes);
                    return;
                case 27:
                    m2581h(attributes);
                    return;
                case 28:
                    m2604S0(attributes);
                    return;
                case 29:
                    m2565p(attributes);
                    return;
                case 30:
                    m2620K0(attributes);
                    return;
                case 31:
                    m2624I0(attributes);
                    return;
                default:
                    this.f5896c = true;
                    this.f5897d = 1;
                    return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.String] */
    /* renamed from: t */
    public final void m2557t(zh0.g0 g0Var, Attributes attributes) {
        HashSet hashSet;
        for (int i = 0; i < attributes.getLength(); i++) {
            attributes.getValue(i).trim();
            ?? r0 = C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()];
            switch (r0) {
                case 21:
                    g0Var.d(m2566o0(r0));
                    break;
                case 22:
                    g0Var.h((String) r0);
                    break;
                case 23:
                    g0Var.e(m2554u0(r0));
                    break;
                case 24:
                    g0Var.g(m2564p0(r0));
                    break;
                case 25:
                    m2594a0(r0);
                    g0Var.b(hashSet != null ? new HashSet(hashSet) : new HashSet(0));
                    break;
            }
        }
    }

    /* renamed from: u */
    public final void m2555u(zh0.l0 l0Var, Attributes attributes) {
        Boolean bool;
        for (int i = 0; i < attributes.getLength(); i++) {
            String qName = attributes.getQName(i);
            if (qName.equals("id") || qName.equals("xml:id")) {
                l0Var.c = attributes.getValue(i).trim();
                return;
            } else if (qName.equals("xml:space")) {
                String trim = attributes.getValue(i).trim();
                if (PhoneConstants.APN_TYPE_DEFAULT.equals(trim)) {
                    bool = Boolean.FALSE;
                } else if (!"preserve".equals(trim)) {
                    throw new SAXException("Invalid value for \"xml:space\" attribute: " + trim);
                } else {
                    bool = Boolean.TRUE;
                }
                l0Var.d = bool;
                return;
            }
        }
    }

    /* renamed from: v */
    public final void m2553v(zh0.i iVar, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()]) {
                case 10:
                    zh0.p m2582g0 = m2582g0(trim);
                    iVar.q = m2582g0;
                    if (m2582g0.i()) {
                        throw new SAXException("Invalid <ellipse> element. rx cannot be negative");
                    }
                    break;
                case 11:
                    zh0.p m2582g02 = m2582g0(trim);
                    iVar.r = m2582g02;
                    if (m2582g02.i()) {
                        throw new SAXException("Invalid <ellipse> element. ry cannot be negative");
                    }
                    break;
                case 12:
                    iVar.o = m2582g0(trim);
                    break;
                case 13:
                    iVar.p = m2582g0(trim);
                    break;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e8, code lost:
        continue;
     */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2551w(zh0.j r5, org.xml.sax.Attributes r6) {
        /*
            r4 = this;
            r0 = 0
            r7 = r0
        L2:
            r0 = r7
            r1 = r6
            int r1 = r1.getLength()
            if (r0 >= r1) goto Lee
            r0 = r6
            r1 = r7
            java.lang.String r0 = r0.getValue(r1)
            java.lang.String r0 = r0.trim()
            r8 = r0
            int[] r0 = p000.di0.C1296a.f5904b
            r1 = r6
            r2 = r7
            java.lang.String r1 = r1.getLocalName(r2)
            di0$b r1 = p000.di0.EnumC1297b.m2543a(r1)
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r9 = r0
            r0 = r9
            r1 = 6
            if (r0 == r1) goto Lcf
            r0 = r9
            switch(r0) {
                case 32: goto L98;
                case 33: goto L8b;
                case 34: goto L53;
                default: goto L50;
            }
        L50:
            goto Le8
        L53:
            r0 = r5
            r1 = r8
            zh0$k r1 = zh0.k.valueOf(r1)     // Catch: java.lang.IllegalArgumentException -> L5f
            r0.k = r1     // Catch: java.lang.IllegalArgumentException -> L5f
            goto Le8
        L5f:
            r5 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "Invalid spreadMethod attribute. \""
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = "\" is not a valid value."
            java.lang.StringBuilder r0 = r0.append(r1)
            org.xml.sax.SAXException r0 = new org.xml.sax.SAXException
            r1 = r0
            r2 = r5
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L8b:
            r0 = r5
            r1 = r4
            r2 = r8
            android.graphics.Matrix r1 = r1.m2546y0(r2)
            r0.j = r1
            goto Le8
        L98:
            java.lang.String r0 = "objectBoundingBox"
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb1
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r8 = r0
        La8:
            r0 = r5
            r1 = r8
            r0.i = r1
            goto Le8
        Lb1:
            java.lang.String r0 = "userSpaceOnUse"
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lc4
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            r8 = r0
            goto La8
        Lc4:
            org.xml.sax.SAXException r0 = new org.xml.sax.SAXException
            r1 = r0
            java.lang.String r2 = "Invalid value for attribute gradientUnits"
            r1.<init>(r2)
            throw r0
        Lcf:
            java.lang.String r0 = "http://www.w3.org/1999/xlink"
            r1 = r6
            r2 = r7
            java.lang.String r1 = r1.getURI(r2)
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto Le2
            goto Le8
        Le2:
            r0 = r5
            r1 = r8
            r0.l = r1
        Le8:
            int r7 = r7 + 1
            goto L2
        Lee:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.di0.m2551w(zh0$j, org.xml.sax.Attributes):void");
    }

    /* renamed from: x */
    public final void m2549x(zh0.o oVar, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()];
            if (i2 == 1) {
                oVar.p = m2582g0(trim);
            } else if (i2 == 2) {
                oVar.q = m2582g0(trim);
            } else if (i2 == 3) {
                zh0.p m2582g0 = m2582g0(trim);
                oVar.r = m2582g0;
                if (m2582g0.i()) {
                    throw new SAXException("Invalid <use> element. width cannot be negative");
                }
            } else if (i2 == 4) {
                zh0.p m2582g02 = m2582g0(trim);
                oVar.s = m2582g02;
                if (m2582g02.i()) {
                    throw new SAXException("Invalid <use> element. height cannot be negative");
                }
            } else if (i2 != 6) {
                if (i2 == 7) {
                    m2568n0(oVar, trim);
                }
            } else if ("http://www.w3.org/1999/xlink".equals(attributes.getURI(i))) {
                oVar.o = trim;
            }
        }
    }

    /* renamed from: y */
    public final void m2547y(zh0.q qVar, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()]) {
                case 15:
                    qVar.o = m2582g0(trim);
                    break;
                case 16:
                    qVar.p = m2582g0(trim);
                    break;
                case 17:
                    qVar.q = m2582g0(trim);
                    break;
                case 18:
                    qVar.r = m2582g0(trim);
                    break;
            }
        }
    }

    /* renamed from: y0 */
    public final Matrix m2546y0(String str) {
        Matrix matrix = new Matrix();
        C1299d c1299d = new C1299d(str);
        c1299d.m2518x();
        while (!c1299d.m2535g()) {
            String m2527o = c1299d.m2527o();
            if (m2527o == null) {
                throw new SAXException("Bad transform function encountered in transform list: " + str);
            }
            if (m2527o.equals("matrix")) {
                c1299d.m2518x();
                Float m2529m = c1299d.m2529m();
                c1299d.m2519w();
                Float m2529m2 = c1299d.m2529m();
                c1299d.m2519w();
                Float m2529m3 = c1299d.m2529m();
                c1299d.m2519w();
                Float m2529m4 = c1299d.m2529m();
                c1299d.m2519w();
                Float m2529m5 = c1299d.m2529m();
                c1299d.m2519w();
                Float m2529m6 = c1299d.m2529m();
                c1299d.m2518x();
                if (m2529m6 == null || !c1299d.m2537e(')')) {
                    throw new SAXException("Invalid transform list: " + str);
                }
                Matrix matrix2 = new Matrix();
                matrix2.setValues(new float[]{m2529m.floatValue(), m2529m3.floatValue(), m2529m5.floatValue(), m2529m2.floatValue(), m2529m4.floatValue(), m2529m6.floatValue(), 0.0f, 0.0f, 1.0f});
                matrix.preConcat(matrix2);
            } else if (m2527o.equals("translate")) {
                c1299d.m2518x();
                Float m2529m7 = c1299d.m2529m();
                Float m2521u = c1299d.m2521u();
                c1299d.m2518x();
                if (m2529m7 == null || !c1299d.m2537e(')')) {
                    throw new SAXException("Invalid transform list: " + str);
                }
                float floatValue = m2529m7.floatValue();
                if (m2521u == null) {
                    matrix.preTranslate(floatValue, 0.0f);
                } else {
                    matrix.preTranslate(floatValue, m2521u.floatValue());
                }
            } else if (m2527o.equals("scale")) {
                c1299d.m2518x();
                Float m2529m8 = c1299d.m2529m();
                Float m2521u2 = c1299d.m2521u();
                c1299d.m2518x();
                if (m2529m8 == null || !c1299d.m2537e(')')) {
                    throw new SAXException("Invalid transform list: " + str);
                } else if (m2521u2 == null) {
                    matrix.preScale(m2529m8.floatValue(), m2529m8.floatValue());
                } else {
                    matrix.preScale(m2529m8.floatValue(), m2521u2.floatValue());
                }
            } else if (m2527o.equals("rotate")) {
                c1299d.m2518x();
                Float m2529m9 = c1299d.m2529m();
                Float m2521u3 = c1299d.m2521u();
                Float m2521u4 = c1299d.m2521u();
                c1299d.m2518x();
                if (m2529m9 == null || !c1299d.m2537e(')')) {
                    throw new SAXException("Invalid transform list: " + str);
                } else if (m2521u3 == null) {
                    matrix.preRotate(m2529m9.floatValue());
                } else if (m2521u4 == null) {
                    throw new SAXException("Invalid transform list: " + str);
                } else {
                    matrix.preRotate(m2529m9.floatValue(), m2521u3.floatValue(), m2521u4.floatValue());
                }
            } else if (m2527o.equals("skewX")) {
                c1299d.m2518x();
                Float m2529m10 = c1299d.m2529m();
                c1299d.m2518x();
                if (m2529m10 == null || !c1299d.m2537e(')')) {
                    throw new SAXException("Invalid transform list: " + str);
                }
                matrix.preSkew((float) Math.tan(Math.toRadians(m2529m10.floatValue())), 0.0f);
            } else if (m2527o.equals("skewY")) {
                c1299d.m2518x();
                Float m2529m11 = c1299d.m2529m();
                c1299d.m2518x();
                if (m2529m11 == null || !c1299d.m2537e(')')) {
                    throw new SAXException("Invalid transform list: " + str);
                }
                matrix.preSkew(0.0f, (float) Math.tan(Math.toRadians(m2529m11.floatValue())));
            } else if (m2527o != null) {
                throw new SAXException("Invalid transform list fn: " + m2527o + ")");
            }
            if (c1299d.m2535g()) {
                break;
            }
            c1299d.m2519w();
        }
        return matrix;
    }

    /* renamed from: z */
    public final void m2545z(zh0.m0 m0Var, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (C1296a.f5904b[EnumC1297b.m2543a(attributes.getLocalName(i)).ordinal()]) {
                case 15:
                    m0Var.m = m2582g0(trim);
                    break;
                case 16:
                    m0Var.n = m2582g0(trim);
                    break;
                case 17:
                    m0Var.o = m2582g0(trim);
                    break;
                case 18:
                    m0Var.p = m2582g0(trim);
                    break;
            }
        }
    }
}
