package org.bluecabin.textoo.impl;

import android.text.Spanned;
import android.text.util.Linkify;
import java.util.regex.Pattern;
import org.bluecabin.textoo.Configurator;
import org.bluecabin.textoo.LinksHandler;
import org.bluecabin.textoo.SpannedConfigurator;
import org.bluecabin.textoo.TextooContext;
import org.bluecabin.textoo.impl.ConfiguratorImpl;
import org.bluecabin.textoo.impl.LinksHandlingImpl;
import org.bluecabin.textoo.impl.TextLinkifyImpl;
import org.bluecabin.textoo.util.CharSequenceSupport$;
import org.bluecabin.textoo.util.CharSequenceSupport$ImplicitCharSequence$;
import scala.Function0;
import scala.Option;
import scala.Some;
import scala.collection.immutable.Queue;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001\u0005\rg\u0001B\u0001\u0003\t-\u0011qc\u00159b]:,GmQ8oM&<WO]1u_JLU\u000e\u001d7\u000b\u0005\r!\u0011\u0001B5na2T!!\u0002\u0004\u0002\rQ,\u0007\u0010^8p\u0015\t9\u0001\"A\u0005cYV,7-\u00192j]*\t\u0011\"A\u0002pe\u001e\u001c\u0001aE\u0003\u0001\u0019Aar\u0004\u0005\u0002\u000e\u001d5\tA!\u0003\u0002\u0010\t\t\u00192\u000b]1o]\u0016$7i\u001c8gS\u001e,(/\u0019;peB!\u0011C\u0005\u000b\r\u001b\u0005\u0011\u0011BA\n\u0003\u0005A\u0019uN\u001c4jOV\u0014\u0018\r^8s\u00136\u0004H\u000e\u0005\u0002\u001655\taC\u0003\u0002\u00181\u0005!A/\u001a=u\u0015\u0005I\u0012aB1oIJ|\u0017\u000eZ\u0005\u00037Y\u0011qa\u00159b]:,G\r\u0005\u0003\u0012;Qa\u0011B\u0001\u0010\u0003\u0005=!V\r\u001f;MS:\\\u0017NZ=J[Bd\u0007\u0003B\t!)1I!!\t\u0002\u0003#1Kgn[:IC:$G.\u001b8h\u00136\u0004H\u000e\u0003\u0005$\u0001\t\u0015\r\u0011\"\u0015%\u0003%Ig.\u001b;Ti\u0006$X-F\u0001&!\r1\u0013\u0006F\u0007\u0002O)\t\u0001&A\u0003tG\u0006d\u0017-\u0003\u0002+O\tIa)\u001e8di&|g\u000e\r\u0005\tY\u0001\u0011\t\u0011)A\u0005K\u0005Q\u0011N\\5u'R\fG/\u001a\u0011\t\u00119\u0002!Q1A\u0005R=\nqa\u00195b]\u001e,7/F\u00011!\r\tt\b\u0006\b\u0003eur!a\r\u001f\u000f\u0005QZdBA\u001b;\u001d\t1\u0014(D\u00018\u0015\tA$\"\u0001\u0004=e>|GOP\u0005\u0002\u0013%\u0011q\u0001C\u0005\u0003\u000b\u0019I!a\u0001\u0003\n\u0005y\u0012\u0011AB\"iC:<W-\u0003\u0002A\u0003\nY1\t[1oO\u0016\fV/Z;f\u0015\tq$\u0001\u0003\u0005D\u0001\t\u0005\t\u0015!\u00031\u0003!\u0019\u0007.\u00198hKN\u0004\u0003\u0002C#\u0001\u0005\u000b\u0007I\u0011\u000b$\u0002\u0011!\fg\u000e\u001a7feN,\u0012a\u0012\t\u0004\u00116{U\"A%\u000b\u0005)[\u0015!C5n[V$\u0018M\u00197f\u0015\tau%\u0001\u0006d_2dWm\u0019;j_:L!AT%\u0003\u000bE+X-^3\u0011\u00055\u0001\u0016BA)\u0005\u00051a\u0015N\\6t\u0011\u0006tG\r\\3s\u0011!\u0019\u0006A!A!\u0002\u00139\u0015!\u00035b]\u0012dWM]:!\u0011!)\u0006A!b\u0001\n'2\u0016!\u0004;fqR|wnQ8oi\u0016DH/F\u0001X!\ti\u0001,\u0003\u0002Z\t\tiA+\u001a=u_>\u001cuN\u001c;fqRD\u0001b\u0017\u0001\u0003\u0002\u0003\u0006IaV\u0001\u000fi\u0016DHo\\8D_:$X\r\u001f;!\u0011\u0019i\u0006\u0001\"\u0001\u0003=\u00061A(\u001b8jiz\"Ba\u00182dIR\u0011\u0001-\u0019\t\u0003#\u0001AQ!\u0016/A\u0004]CQa\t/A\u0002\u0015BqA\f/\u0011\u0002\u0003\u0007\u0001\u0007C\u0004F9B\u0005\t\u0019A$\t\u000b\u0019\u0004A\u0011K4\u0002\u001bU\u0004H-\u0019;f\u0007\"\fgnZ3t)\t\u0001\u0007\u000eC\u0003jK\u0002\u0007\u0001'\u0001\u0006oK^\u001c\u0005.\u00198hKNDQa\u001b\u0001\u0005R1\fa\"\u001e9eCR,\u0007*\u00198eY\u0016\u00148\u000f\u0006\u0002a[\")aN\u001ba\u0001\u000f\u0006Ya.Z<IC:$G.\u001a:t\u0011\u0015\u0001\b\u0001\"\u0016r\u0003-a\u0017N\\6jMf$V\r\u001f;\u0015\u0007Q\u00118\u000fC\u0003\u0018_\u0002\u0007A\u0003C\u0003u_\u0002\u0007Q/\u0001\tmS:\\7\u000b]1o]\u0006\u0014G.Z=qKB\u0011aE^\u0005\u0003o\u001e\u00121!\u00138u\u0011\u0015\u0001\b\u0001\"\u0016z)\u0015!\"p_A\b\u0011\u00159\u0002\u00101\u0001\u0015\u0011\u0015a\b\u00101\u0001~\u0003\u001d\u0001\u0018\r\u001e;fe:\u00042A`A\u0006\u001b\u0005y(\u0002BA\u0001\u0003\u0007\tQA]3hKbTA!!\u0002\u0002\b\u0005!Q\u000f^5m\u0015\t\tI!\u0001\u0003kCZ\f\u0017bAA\u0007\u007f\n9\u0001+\u0019;uKJt\u0007bBA\tq\u0002\u0007\u00111C\u0001\u0007g\u000eDW-\\3\u0011\t\u0005U\u00111\u0004\b\u0004M\u0005]\u0011bAA\rO\u00051\u0001K]3eK\u001aLA!!\b\u0002 \t11\u000b\u001e:j]\u001eT1!!\u0007(\u0011\u0019\u0001\b\u0001\"\u0016\u0002$QYA#!\n\u0002(\u0005%\u00121FA&\u0011\u00199\u0012\u0011\u0005a\u0001)!1A0!\tA\u0002uD\u0001\"!\u0005\u0002\"\u0001\u0007\u00111\u0003\u0005\t\u0003[\t\t\u00031\u0001\u00020\u0005YQ.\u0019;dQ\u001aKG\u000e^3s!\u0011\t\t$!\u0012\u000f\t\u0005M\u0012q\b\b\u0005\u0003k\tiD\u0004\u0003\u00028\u0005mbb\u0001\u001c\u0002:%\t\u0011$\u0003\u0002\u00181%\u0019\u0011Q\u0001\f\n\t\u0005\u0005\u00131I\u0001\b\u0019&t7.\u001b4z\u0015\r\t)AF\u0005\u0005\u0003\u000f\nIEA\u0006NCR\u001c\u0007NR5mi\u0016\u0014(\u0002BA!\u0003\u0007B\u0001\"!\u0014\u0002\"\u0001\u0007\u0011qJ\u0001\u0010iJ\fgn\u001d4pe64\u0015\u000e\u001c;feB!\u0011\u0011GA)\u0013\u0011\t\u0019&!\u0013\u0003\u001fQ\u0013\u0018M\\:g_Jlg)\u001b7uKJDq!a\u0016\u0001\t#\nI&\u0001\u000bhKR\u001c\u0006/\u00198oK\u00124%o\\7SKN,H\u000e\u001e\u000b\u0005\u00037\n\t\u0007\u0005\u0003'\u0003;\"\u0012bAA0O\t1q\n\u001d;j_:DaaFA+\u0001\u0004!\u0002bBA3\u0001\u0011E\u0013qM\u0001\u0013g\u0016$8\u000b]1o]\u0016$Gk\u001c*fgVdG\u000fF\u0003\u0015\u0003S\ni\u0007C\u0004\u0002l\u0005\r\u0004\u0019\u0001\u000b\u0002\u000fM\u0004\u0018M\u001c8fI\"1q#a\u0019A\u0002QAq!!\u001d\u0001\t#\n\u0019(\u0001\u0006hKR\u001c\u0006/\u00198oK\u0012$2\u0001FA;\u0011\u00199\u0012q\u000ea\u0001)!9\u0011\u0011\u0010\u0001\u0005R\u0005m\u0014AC:fiN\u0003\u0018M\u001c8fIR)A#! \u0002��!1q#a\u001eA\u0002QAq!a\u001b\u0002x\u0001\u0007AcB\u0004\u0002\u0004\nAI!!\"\u0002/M\u0003\u0018M\u001c8fI\u000e{gNZ5hkJ\fGo\u001c:J[Bd\u0007cA\t\u0002\b\u001a1\u0011A\u0001E\u0005\u0003\u0013\u001bB!a\"\u0002\fB\u0019a%!$\n\u0007\u0005=uE\u0001\u0004B]f\u0014VM\u001a\u0005\b;\u0006\u001dE\u0011AAJ)\t\t)\t\u0003\u0005\u0002\u0018\u0006\u001dE\u0011AAM\u0003\u0019\u0019'/Z1uKR)A\"a'\u0002 \"9\u0011QTAK\u0001\u00049\u0016aB2p]R,\u0007\u0010\u001e\u0005\u0007/\u0005U\u0005\u0019\u0001\u000b\t\u0015\u0005\r\u0016qQI\u0001\n\u0003\t)+A\u000e%Y\u0016\u001c8/\u001b8ji\u0012:'/Z1uKJ$C-\u001a4bk2$HEM\u000b\u0003\u0003OS3\u0001MAUW\t\tY\u000b\u0005\u0003\u0002.\u0006]VBAAX\u0015\u0011\t\t,a-\u0002\u0013Ut7\r[3dW\u0016$'bAA[O\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\t\u0005e\u0016q\u0016\u0002\u0012k:\u001c\u0007.Z2lK\u00124\u0016M]5b]\u000e,\u0007BCA_\u0003\u000f\u000b\n\u0011\"\u0001\u0002@\u0006YB\u0005\\3tg&t\u0017\u000e\u001e\u0013he\u0016\fG/\u001a:%I\u00164\u0017-\u001e7uIM*\"!!1+\u0007\u001d\u000bI\u000b")
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/SpannedConfiguratorImpl.class */
public class SpannedConfiguratorImpl extends SpannedConfigurator implements TextLinkifyImpl<Spanned, SpannedConfigurator>, LinksHandlingImpl<Spanned, SpannedConfigurator> {
    private final Queue<Change<Spanned>> changes;
    private final Queue<LinksHandler> handlers;
    private final Function0<Spanned> initState;
    private volatile TextLinkifyImpl$AutoLink$ org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module;
    private final TextooContext textooContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpannedConfiguratorImpl(Function0<Spanned> function0, Queue<Change<Spanned>> queue, Queue<LinksHandler> queue2, TextooContext textooContext) {
        super(textooContext);
        this.initState = function0;
        this.changes = queue;
        this.handlers = queue2;
        this.textooContext = textooContext;
        ConfiguratorImpl.Cclass.$init$(this);
        TextLinkifyImpl.Cclass.$init$(this);
        LinksHandlingImpl.Cclass.$init$(this);
    }

    public static SpannedConfigurator create(TextooContext textooContext, Spanned spanned) {
        return SpannedConfiguratorImpl$.MODULE$.create(textooContext, spanned);
    }

    private TextLinkifyImpl$AutoLink$ org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$lzycompute() {
        synchronized (this) {
            if (this.org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module == null) {
                this.org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module = new TextLinkifyImpl$AutoLink$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module;
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public final Configurator addChange(Change change) {
        return ConfiguratorImpl.Cclass.addChange(this, change);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.Configurator] */
    @Override // org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.LinksHandling
    public final SpannedConfigurator addLinksHandler(LinksHandler linksHandler) {
        return LinksHandlingImpl.Cclass.addLinksHandler(this, linksHandler);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.text.Spanned, java.lang.Object] */
    @Override // org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.Configurator
    public final Spanned apply() {
        return ConfiguratorImpl.Cclass.apply(this);
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public Queue<Change<Spanned>> changes() {
        return this.changes;
    }

    public Spanned getSpanned(Spanned spanned) {
        return spanned;
    }

    public Option<Spanned> getSpannedFromResult(Spanned spanned) {
        return new Some(spanned);
    }

    @Override // org.bluecabin.textoo.impl.LinksHandlingImpl
    public Queue<LinksHandler> handlers() {
        return this.handlers;
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public final TextooContext implicitTextooContext() {
        return ConfiguratorImpl.Cclass.implicitTextooContext(this);
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public Function0<Spanned> initState() {
        return this.initState;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.Configurator] */
    @Override // org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.TextLinkify
    public final SpannedConfigurator linkify(Pattern pattern, String str) {
        return TextLinkifyImpl.Cclass.linkify(this, pattern, str);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.Configurator] */
    @Override // org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.TextLinkify
    public final SpannedConfigurator linkify(Pattern pattern, String str, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
        return TextLinkifyImpl.Cclass.linkify(this, pattern, str, matchFilter, transformFilter);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.Configurator] */
    @Override // org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.TextLinkify
    public final SpannedConfigurator linkifyAll() {
        return TextLinkifyImpl.Cclass.linkifyAll(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.Configurator] */
    @Override // org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.TextLinkify
    public final SpannedConfigurator linkifyEmailAddresses() {
        return TextLinkifyImpl.Cclass.linkifyEmailAddresses(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.Configurator] */
    @Override // org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.TextLinkify
    public final SpannedConfigurator linkifyMapAddresses() {
        return TextLinkifyImpl.Cclass.linkifyMapAddresses(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.Configurator] */
    @Override // org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.TextLinkify
    public final SpannedConfigurator linkifyPhoneNumbers() {
        return TextLinkifyImpl.Cclass.linkifyPhoneNumbers(this);
    }

    public final Spanned linkifyText(Spanned spanned, int i) {
        Linkify.addLinks(CharSequenceSupport$ImplicitCharSequence$.MODULE$.toSpannable$extension(CharSequenceSupport$.MODULE$.ImplicitCharSequence(spanned)), i);
        return spanned;
    }

    public final Spanned linkifyText(Spanned spanned, Pattern pattern, String str) {
        Linkify.addLinks(CharSequenceSupport$ImplicitCharSequence$.MODULE$.toSpannable$extension(CharSequenceSupport$.MODULE$.ImplicitCharSequence(spanned)), pattern, str);
        return spanned;
    }

    public final Spanned linkifyText(Spanned spanned, Pattern pattern, String str, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
        Linkify.addLinks(CharSequenceSupport$ImplicitCharSequence$.MODULE$.toSpannable$extension(CharSequenceSupport$.MODULE$.ImplicitCharSequence(spanned)), pattern, str, matchFilter, transformFilter);
        return spanned;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.Configurator] */
    @Override // org.bluecabin.textoo.SpannedConfigurator, org.bluecabin.textoo.TextLinkify
    public final SpannedConfigurator linkifyWebUrls() {
        return TextLinkifyImpl.Cclass.linkifyWebUrls(this);
    }

    @Override // org.bluecabin.textoo.impl.LinksHandlingImpl
    public /* synthetic */ Object org$bluecabin$textoo$impl$LinksHandlingImpl$$super$toResult(Object obj) {
        return ConfiguratorImpl.Cclass.toResult(this, obj);
    }

    @Override // org.bluecabin.textoo.impl.TextLinkifyImpl
    public final TextLinkifyImpl$AutoLink$ org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink() {
        return this.org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module == null ? org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$lzycompute() : this.org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module;
    }

    public Spanned setSpanned(Spanned spanned, Spanned spanned2) {
        return spanned2;
    }

    public Spanned setSpannedToResult(Spanned spanned, Spanned spanned2) {
        return spanned;
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public TextooContext textooContext() {
        return this.textooContext;
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public Object toResult(Object obj) {
        return LinksHandlingImpl.Cclass.toResult(this, obj);
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public SpannedConfiguratorImpl updateChanges(Queue<Change<Spanned>> queue) {
        return new SpannedConfiguratorImpl(initState(), queue, handlers(), textooContext());
    }

    @Override // org.bluecabin.textoo.impl.LinksHandlingImpl
    public SpannedConfiguratorImpl updateHandlers(Queue<LinksHandler> queue) {
        return new SpannedConfiguratorImpl(initState(), changes(), queue, textooContext());
    }
}
