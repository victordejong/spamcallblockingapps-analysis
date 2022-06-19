package org.bluecabin.textoo.impl;

import android.text.Html;
import android.text.util.Linkify;
import java.util.regex.Pattern;
import org.bluecabin.textoo.SpannedConfigurator;
import org.bluecabin.textoo.StringConfigurator;
import org.bluecabin.textoo.TextooContext;
import org.bluecabin.textoo.impl.ConfiguratorImpl;
import scala.Function0;
import scala.collection.immutable.Queue;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005%e\u0001B\u0001\u0003\t-\u0011ac\u0015;sS:<7i\u001c8gS\u001e,(/\u0019;pe&k\u0007\u000f\u001c\u0006\u0003\u0007\u0011\tA![7qY*\u0011QAB\u0001\u0007i\u0016DHo\\8\u000b\u0005\u001dA\u0011!\u00032mk\u0016\u001c\u0017MY5o\u0015\u0005I\u0011aA8sO\u000e\u00011c\u0001\u0001\r!A\u0011QBD\u0007\u0002\t%\u0011q\u0002\u0002\u0002\u0013'R\u0014\u0018N\\4D_:4\u0017nZ;sCR|'\u000f\u0005\u0003\u0012%QqR\"\u0001\u0002\n\u0005M\u0011!\u0001E\"p]\u001aLw-\u001e:bi>\u0014\u0018*\u001c9m!\t)2D\u0004\u0002\u001735\tqCC\u0001\u0019\u0003\u0015\u00198-\u00197b\u0013\tQr#\u0001\u0004Qe\u0016$WMZ\u0005\u00039u\u0011aa\u0015;sS:<'B\u0001\u000e\u0018!\t\t\u0002\u0001\u0003\u0005!\u0001\t\u0015\r\u0011\"\u0015\"\u0003%Ig.\u001b;Ti\u0006$X-F\u0001#!\r12\u0005F\u0005\u0003I]\u0011\u0011BR;oGRLwN\u001c\u0019\t\u0011\u0019\u0002!\u0011!Q\u0001\n\t\n!\"\u001b8jiN#\u0018\r^3!\u0011!A\u0003A!b\u0001\n#J\u0013aB2iC:<Wm]\u000b\u0002UA\u00191&\u000f\u000b\u000f\u00051:dBA\u00177\u001d\tqSG\u0004\u00020i9\u0011\u0001gM\u0007\u0002c)\u0011!GC\u0001\u0007yI|w\u000e\u001e \n\u0003%I!a\u0002\u0005\n\u0005\u00151\u0011BA\u0002\u0005\u0013\tA$!\u0001\u0004DQ\u0006tw-Z\u0005\u0003um\u00121b\u00115b]\u001e,\u0017+^3vK*\u0011\u0001H\u0001\u0005\t{\u0001\u0011\t\u0011)A\u0005U\u0005A1\r[1oO\u0016\u001c\b\u0005\u0003\u0005@\u0001\t\u0015\r\u0011b\u0015A\u00035!X\r\u001f;p_\u000e{g\u000e^3yiV\t\u0011\t\u0005\u0002\u000e\u0005&\u00111\t\u0002\u0002\u000e)\u0016DHo\\8D_:$X\r\u001f;\t\u0011\u0015\u0003!\u0011!Q\u0001\n\u0005\u000ba\u0002^3yi>|7i\u001c8uKb$\b\u0005C\u0003H\u0001\u0011%\u0001*\u0001\u0004=S:LGO\u0010\u000b\u0004\u0013.cEC\u0001\u0010K\u0011\u0015yd\tq\u0001B\u0011\u0015\u0001c\t1\u0001#\u0011\u001dAc\t%AA\u0002)BQA\u0014\u0001\u0005B=\u000b\u0011\u0002]1sg\u0016DE/\u001c7\u0015\u0003A\u0003\"!D)\n\u0005I#!aE*qC:tW\rZ\"p]\u001aLw-\u001e:bi>\u0014\b\"\u0002(\u0001\t\u0003\"Fc\u0001)VM\")ak\u0015a\u0001/\u0006Y\u0011.\\1hK\u001e+G\u000f^3s!\tA6M\u0004\u0002ZA:\u0011!,\u0018\b\u0003amK\u0011\u0001X\u0001\bC:$'o\\5e\u0013\tqv,\u0001\u0003uKb$(\"\u0001/\n\u0005\u0005\u0014\u0017\u0001\u0002%u[2T!AX0\n\u0005\u0011,'aC%nC\u001e,w)\u001a;uKJT!!\u00192\t\u000b\u001d\u001c\u0006\u0019\u00015\u0002\u0015Q\fw\rS1oI2,'\u000f\u0005\u0002YS&\u0011!.\u001a\u0002\u000b)\u0006<\u0007*\u00198eY\u0016\u0014\b\"\u00027\u0001\t\u0013i\u0017!\u0006;p'B\fgN\\3e\u0007>tg-[4ve\u0006$xN]\u000b\u0002]B\u0011\u0011c\\\u0005\u0003a\n\u0011qc\u00159b]:,GmQ8oM&<WO]1u_JLU\u000e\u001d7\t\u000bI\u0004A\u0011I(\u0002+1Lgn[5gs\u0016k\u0017-\u001b7BI\u0012\u0014Xm]:fg\")A\u000f\u0001C!\u001f\u0006\u0019B.\u001b8lS\u001aL\b\u000b[8oK:+XNY3sg\")a\u000f\u0001C!o\u00069A.\u001b8lS\u001aLH\u0003\u0002)y\u0003\u0013AQ!_;A\u0002i\fq\u0001]1ui\u0016\u0014h\u000eE\u0002|\u0003\u000bi\u0011\u0001 \u0006\u0003{z\fQA]3hKbT1a`A\u0001\u0003\u0011)H/\u001b7\u000b\u0005\u0005\r\u0011\u0001\u00026bm\u0006L1!a\u0002}\u0005\u001d\u0001\u0016\r\u001e;fe:Da!a\u0003v\u0001\u0004!\u0012AB:dQ\u0016lW\r\u0003\u0004w\u0001\u0011\u0005\u0013q\u0002\u000b\n!\u0006E\u0011QCA\f\u0003_Aq!a\u0005\u0002\u000e\u0001\u0007!0A\u0001q\u0011\u001d\tY!!\u0004A\u0002QA\u0001\"!\u0007\u0002\u000e\u0001\u0007\u00111D\u0001\f[\u0006$8\r\u001b$jYR,'\u000f\u0005\u0003\u0002\u001e\u0005%b\u0002BA\u0010\u0003Gq1!WA\u0011\u0013\ty(-\u0003\u0003\u0002&\u0005\u001d\u0012a\u0002'j].Lg-\u001f\u0006\u0003\u007f\nLA!a\u000b\u0002.\tYQ*\u0019;dQ\u001aKG\u000e^3s\u0015\u0011\t)#a\n\t\u0011\u0005E\u0012Q\u0002a\u0001\u0003g\tq\u0002\u001e:b]N4wN]7GS2$XM\u001d\t\u0005\u0003;\t)$\u0003\u0003\u00028\u00055\"a\u0004+sC:\u001chm\u001c:n\r&dG/\u001a:\t\r\u0005m\u0002\u0001\"\u0011P\u0003)a\u0017N\\6jMf\fE\u000e\u001c\u0005\u0007\u0003\u007f\u0001A\u0011I(\u0002'1Lgn[5gs6\u000b\u0007/\u00113ee\u0016\u001c8/Z:\t\r\u0005\r\u0003\u0001\"\u0011P\u00039a\u0017N\\6jMf<VMY+sYNDq!a\u0012\u0001\t#\nI%A\u0007va\u0012\fG/Z\"iC:<Wm\u001d\u000b\u0004=\u0005-\u0003bBA'\u0003\u000b\u0002\rAK\u0001\u000b]\u0016<8\t[1oO\u0016\u001cxaBA)\u0005!%\u00111K\u0001\u0017'R\u0014\u0018N\\4D_:4\u0017nZ;sCR|'/S7qYB\u0019\u0011#!\u0016\u0007\r\u0005\u0011\u0001\u0012BA,'\u0011\t)&!\u0017\u0011\u0007Y\tY&C\u0002\u0002^]\u0011a!\u00118z%\u00164\u0007bB$\u0002V\u0011\u0005\u0011\u0011\r\u000b\u0003\u0003'B\u0001\"!\u001a\u0002V\u0011\u0005\u0011qM\u0001\u0007GJ,\u0017\r^3\u0015\u000b1\tI'!\u001c\t\u000f\u0005-\u00141\ra\u0001\u0003\u000691m\u001c8uKb$\bB\u00020\u0002d\u0001\u0007A\u0003\u0003\u0006\u0002r\u0005U\u0013\u0013!C\u0005\u0003g\n1\u0004\n7fgNLg.\u001b;%OJ,\u0017\r^3sI\u0011,g-Y;mi\u0012\u0012TCAA;U\rQ\u0013qO\u0016\u0003\u0003s\u0002B!a\u001f\u0002\u00066\u0011\u0011Q\u0010\u0006\u0005\u0003\u007f\n\t)A\u0005v]\u000eDWmY6fI*\u0019\u00111Q\f\u0002\u0015\u0005tgn\u001c;bi&|g.\u0003\u0003\u0002\b\u0006u$!E;oG\",7m[3e-\u0006\u0014\u0018.\u00198dK\u0002")
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/StringConfiguratorImpl.class */
public class StringConfiguratorImpl extends StringConfigurator implements ConfiguratorImpl<String, StringConfiguratorImpl> {
    private final Queue<Change<String>> changes;
    private final Function0<String> initState;
    private final TextooContext textooContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringConfiguratorImpl(Function0<String> function0, Queue<Change<String>> queue, TextooContext textooContext) {
        super(textooContext);
        this.initState = function0;
        this.changes = queue;
        this.textooContext = textooContext;
        ConfiguratorImpl.Cclass.$init$(this);
    }

    public static StringConfigurator create(TextooContext textooContext, String str) {
        return StringConfiguratorImpl$.MODULE$.create(textooContext, str);
    }

    private SpannedConfiguratorImpl toSpannedConfigurator() {
        return new SpannedConfiguratorImpl(new StringConfiguratorImpl$$anonfun$toSpannedConfigurator$1(this), SpannedConfiguratorImpl$.MODULE$.$lessinit$greater$default$2(), SpannedConfiguratorImpl$.MODULE$.$lessinit$greater$default$3(), textooContext());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.Configurator, org.bluecabin.textoo.impl.StringConfiguratorImpl] */
    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public final StringConfiguratorImpl addChange(Change<String> change) {
        return ConfiguratorImpl.Cclass.addChange(this, change);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.lang.String] */
    @Override // org.bluecabin.textoo.StringConfigurator, org.bluecabin.textoo.Configurator
    public final String apply() {
        return ConfiguratorImpl.Cclass.apply(this);
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public Queue<Change<String>> changes() {
        return this.changes;
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public final TextooContext implicitTextooContext() {
        return ConfiguratorImpl.Cclass.implicitTextooContext(this);
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public Function0<String> initState() {
        return this.initState;
    }

    @Override // org.bluecabin.textoo.StringConfigurator, org.bluecabin.textoo.TextLinkify
    public SpannedConfigurator linkify(Pattern pattern, String str) {
        return (SpannedConfigurator) toSpannedConfigurator().linkify(pattern, str);
    }

    @Override // org.bluecabin.textoo.StringConfigurator, org.bluecabin.textoo.TextLinkify
    public SpannedConfigurator linkify(Pattern pattern, String str, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
        return (SpannedConfigurator) toSpannedConfigurator().linkify(pattern, str, matchFilter, transformFilter);
    }

    @Override // org.bluecabin.textoo.StringConfigurator, org.bluecabin.textoo.TextLinkify
    public SpannedConfigurator linkifyAll() {
        return (SpannedConfigurator) toSpannedConfigurator().linkifyAll();
    }

    @Override // org.bluecabin.textoo.StringConfigurator, org.bluecabin.textoo.TextLinkify
    public SpannedConfigurator linkifyEmailAddresses() {
        return (SpannedConfigurator) toSpannedConfigurator().linkifyEmailAddresses();
    }

    @Override // org.bluecabin.textoo.StringConfigurator, org.bluecabin.textoo.TextLinkify
    public SpannedConfigurator linkifyMapAddresses() {
        return (SpannedConfigurator) toSpannedConfigurator().linkifyMapAddresses();
    }

    @Override // org.bluecabin.textoo.StringConfigurator, org.bluecabin.textoo.TextLinkify
    public SpannedConfigurator linkifyPhoneNumbers() {
        return (SpannedConfigurator) toSpannedConfigurator().linkifyPhoneNumbers();
    }

    @Override // org.bluecabin.textoo.StringConfigurator, org.bluecabin.textoo.TextLinkify
    public SpannedConfigurator linkifyWebUrls() {
        return (SpannedConfigurator) toSpannedConfigurator().linkifyWebUrls();
    }

    @Override // org.bluecabin.textoo.StringConfigurator
    public SpannedConfigurator parseHtml() {
        return new SpannedConfiguratorImpl(new StringConfiguratorImpl$$anonfun$parseHtml$1(this), SpannedConfiguratorImpl$.MODULE$.$lessinit$greater$default$2(), SpannedConfiguratorImpl$.MODULE$.$lessinit$greater$default$3(), textooContext());
    }

    @Override // org.bluecabin.textoo.StringConfigurator
    public SpannedConfigurator parseHtml(Html.ImageGetter imageGetter, Html.TagHandler tagHandler) {
        return new SpannedConfiguratorImpl(new StringConfiguratorImpl$$anonfun$parseHtml$2(this, imageGetter, tagHandler), SpannedConfiguratorImpl$.MODULE$.$lessinit$greater$default$2(), SpannedConfiguratorImpl$.MODULE$.$lessinit$greater$default$3(), textooContext());
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public TextooContext textooContext() {
        return this.textooContext;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.lang.String] */
    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public String toResult(String str) {
        return ConfiguratorImpl.Cclass.toResult(this, str);
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public StringConfiguratorImpl updateChanges(Queue<Change<String>> queue) {
        return new StringConfiguratorImpl(initState(), queue, textooContext());
    }
}
