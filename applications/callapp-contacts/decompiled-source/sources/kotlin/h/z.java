package kotlin.h;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.i;
import kotlin.f.c;
import kotlin.f.d;
import kotlin.g.h;
import kotlin.g.k;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.n;
import kotlin.t;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.apache.commons.lang3.StringUtils;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n��\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\f\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0019\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001e\u001a\u001c\u0010\t\u001a\u00020\n*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u001c\u0010\u000e\u001a\u00020\n*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u001f\u0010\u000f\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\rH\u0086\u0002\u001a\u001f\u0010\u000f\u001a\u00020\r*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\rH\u0086\u0002\u001a\u0015\u0010\u000f\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0087\n\u001a\u001c\u0010\u0014\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u001c\u0010\u0014\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\r\u001a:\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0018\u00010\u0017*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001aE\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0018\u00010\u0017*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\rH\u0002¢\u0006\u0002\b\u001c\u001a:\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0018\u00010\u0017*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u0012\u0010\u001e\u001a\u00020\r*\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u0006\u001a7\u0010 \u001a\u0002H!\"\f\b��\u0010\"*\u00020\u0002*\u0002H!\"\u0004\b\u0001\u0010!*\u0002H\"2\f\u0010#\u001a\b\u0012\u0004\u0012\u0002H!0$H\u0087\bø\u0001��¢\u0006\u0002\u0010%\u001a7\u0010&\u001a\u0002H!\"\f\b��\u0010\"*\u00020\u0002*\u0002H!\"\u0004\b\u0001\u0010!*\u0002H\"2\f\u0010#\u001a\b\u0012\u0004\u0012\u0002H!0$H\u0087\bø\u0001��¢\u0006\u0002\u0010%\u001a&\u0010'\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a;\u0010'\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u001b\u001a\u00020\rH\u0002¢\u0006\u0002\b)\u001a&\u0010'\u001a\u00020\u0006*\u00020\u00022\u0006\u0010*\u001a\u00020\n2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a&\u0010+\u001a\u00020\u0006*\u00020\u00022\u0006\u0010,\u001a\u00020-2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a,\u0010+\u001a\u00020\u0006*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a\r\u0010.\u001a\u00020\r*\u00020\u0002H\u0087\b\u001a\r\u0010/\u001a\u00020\r*\u00020\u0002H\u0087\b\u001a\r\u00100\u001a\u00020\r*\u00020\u0002H\u0087\b\u001a \u00101\u001a\u00020\r*\u0004\u0018\u00010\u0002H\u0087\b\u0082\u0002\u000e\n\f\b��\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010��\u001a \u00102\u001a\u00020\r*\u0004\u0018\u00010\u0002H\u0087\b\u0082\u0002\u000e\n\f\b��\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010��\u001a\r\u00103\u001a\u000204*\u00020\u0002H\u0086\u0002\u001a&\u00105\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a&\u00105\u001a\u00020\u0006*\u00020\u00022\u0006\u0010*\u001a\u00020\n2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a&\u00106\u001a\u00020\u0006*\u00020\u00022\u0006\u0010,\u001a\u00020-2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a,\u00106\u001a\u00020\u0006*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u0010\u00107\u001a\b\u0012\u0004\u0012\u00020\n08*\u00020\u0002\u001a\u0010\u00109\u001a\b\u0012\u0004\u0012\u00020\n0:*\u00020\u0002\u001a\u0015\u0010;\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0087\f\u001a\u000f\u0010<\u001a\u00020\n*\u0004\u0018\u00010\nH\u0087\b\u001a\u001c\u0010=\u001a\u00020\u0002*\u00020\u00022\u0006\u0010>\u001a\u00020\u00062\b\b\u0002\u0010?\u001a\u00020\u0011\u001a\u001c\u0010=\u001a\u00020\n*\u00020\n2\u0006\u0010>\u001a\u00020\u00062\b\b\u0002\u0010?\u001a\u00020\u0011\u001a\u001c\u0010@\u001a\u00020\u0002*\u00020\u00022\u0006\u0010>\u001a\u00020\u00062\b\b\u0002\u0010?\u001a\u00020\u0011\u001a\u001c\u0010@\u001a\u00020\n*\u00020\n2\u0006\u0010>\u001a\u00020\u00062\b\b\u0002\u0010?\u001a\u00020\u0011\u001aG\u0010A\u001a\b\u0012\u0004\u0012\u00020\u000108*\u00020\u00022\u000e\u0010B\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0C2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006H\u0002¢\u0006\u0004\bE\u0010F\u001a=\u0010A\u001a\b\u0012\u0004\u0012\u00020\u000108*\u00020\u00022\u0006\u0010B\u001a\u00020-2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006H\u0002¢\u0006\u0002\bE\u001a4\u0010G\u001a\u00020\r*\u00020\u00022\u0006\u0010H\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010I\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rH��\u001a\u0012\u0010J\u001a\u00020\u0002*\u00020\u00022\u0006\u0010K\u001a\u00020\u0002\u001a\u0012\u0010J\u001a\u00020\n*\u00020\n2\u0006\u0010K\u001a\u00020\u0002\u001a\u001a\u0010L\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u0006\u001a\u0012\u0010L\u001a\u00020\u0002*\u00020\u00022\u0006\u0010M\u001a\u00020\u0001\u001a\u001d\u0010L\u001a\u00020\n*\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010L\u001a\u00020\n*\u00020\n2\u0006\u0010M\u001a\u00020\u0001H\u0087\b\u001a\u0012\u0010N\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002\u001a\u0012\u0010N\u001a\u00020\n*\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0002\u001a\u0012\u0010O\u001a\u00020\u0002*\u00020\u00022\u0006\u0010P\u001a\u00020\u0002\u001a\u001a\u0010O\u001a\u00020\u0002*\u00020\u00022\u0006\u0010K\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002\u001a\u0012\u0010O\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u0002\u001a\u001a\u0010O\u001a\u00020\n*\u00020\n2\u0006\u0010K\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002\u001a.\u0010Q\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0014\b\b\u0010R\u001a\u000e\u0012\u0004\u0012\u00020T\u0012\u0004\u0012\u00020\u00020SH\u0087\bø\u0001��\u001a\u001d\u0010Q\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010U\u001a\u00020\nH\u0087\b\u001a$\u0010V\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010V\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010X\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010X\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010Y\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010Y\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010Z\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010Z\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001d\u0010[\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010U\u001a\u00020\nH\u0087\b\u001a)\u0010\\\u001a\u00020\n*\u00020\n2\u0012\u0010R\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110SH\u0087\bø\u0001��¢\u0006\u0002\b]\u001a)\u0010\\\u001a\u00020\n*\u00020\n2\u0012\u0010R\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00020SH\u0087\bø\u0001��¢\u0006\u0002\b^\u001a\"\u0010_\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u0002\u001a\u001a\u0010_\u001a\u00020\u0002*\u00020\u00022\u0006\u0010M\u001a\u00020\u00012\u0006\u0010U\u001a\u00020\u0002\u001a%\u0010_\u001a\u00020\n*\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u0002H\u0087\b\u001a\u001d\u0010_\u001a\u00020\n*\u00020\n2\u0006\u0010M\u001a\u00020\u00012\u0006\u0010U\u001a\u00020\u0002H\u0087\b\u001a=\u0010`\u001a\b\u0012\u0004\u0012\u00020\n0:*\u00020\u00022\u0012\u0010B\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0C\"\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006¢\u0006\u0002\u0010a\u001a0\u0010`\u001a\b\u0012\u0004\u0012\u00020\n0:*\u00020\u00022\n\u0010B\u001a\u00020-\"\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006\u001a/\u0010`\u001a\b\u0012\u0004\u0012\u00020\n0:*\u00020\u00022\u0006\u0010P\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010D\u001a\u00020\u0006H\u0002¢\u0006\u0002\bb\u001a%\u0010`\u001a\b\u0012\u0004\u0012\u00020\n0:*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010D\u001a\u00020\u0006H\u0087\b\u001a=\u0010c\u001a\b\u0012\u0004\u0012\u00020\n08*\u00020\u00022\u0012\u0010B\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0C\"\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006¢\u0006\u0002\u0010d\u001a0\u0010c\u001a\b\u0012\u0004\u0012\u00020\n08*\u00020\u00022\n\u0010B\u001a\u00020-\"\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006\u001a\u001c\u0010e\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u001c\u0010e\u001a\u00020\r*\u00020\u00022\u0006\u0010K\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\r\u001a$\u0010e\u001a\u00020\r*\u00020\u00022\u0006\u0010K\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u0012\u0010f\u001a\u00020\u0002*\u00020\u00022\u0006\u0010M\u001a\u00020\u0001\u001a\u001d\u0010f\u001a\u00020\u0002*\u00020\n2\u0006\u0010g\u001a\u00020\u00062\u0006\u0010h\u001a\u00020\u0006H\u0087\b\u001a\u001f\u0010i\u001a\u00020\n*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010(\u001a\u00020\u0006H\u0087\b\u001a\u0012\u0010i\u001a\u00020\n*\u00020\u00022\u0006\u0010M\u001a\u00020\u0001\u001a\u0012\u0010i\u001a\u00020\n*\u00020\n2\u0006\u0010M\u001a\u00020\u0001\u001a\u001c\u0010j\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010j\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010k\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010k\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010l\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010l\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010m\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010m\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a\n\u0010n\u001a\u00020\u0002*\u00020\u0002\u001a$\u0010n\u001a\u00020\u0002*\u00020\u00022\u0012\u0010o\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\bø\u0001��\u001a\u0016\u0010n\u001a\u00020\u0002*\u00020\u00022\n\u0010,\u001a\u00020-\"\u00020\u0011\u001a\r\u0010n\u001a\u00020\n*\u00020\nH\u0087\b\u001a$\u0010n\u001a\u00020\n*\u00020\n2\u0012\u0010o\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\bø\u0001��\u001a\u0016\u0010n\u001a\u00020\n*\u00020\n2\n\u0010,\u001a\u00020-\"\u00020\u0011\u001a\n\u0010p\u001a\u00020\u0002*\u00020\u0002\u001a$\u0010p\u001a\u00020\u0002*\u00020\u00022\u0012\u0010o\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\bø\u0001��\u001a\u0016\u0010p\u001a\u00020\u0002*\u00020\u00022\n\u0010,\u001a\u00020-\"\u00020\u0011\u001a\r\u0010p\u001a\u00020\n*\u00020\nH\u0087\b\u001a$\u0010p\u001a\u00020\n*\u00020\n2\u0012\u0010o\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\bø\u0001��\u001a\u0016\u0010p\u001a\u00020\n*\u00020\n2\n\u0010,\u001a\u00020-\"\u00020\u0011\u001a\n\u0010q\u001a\u00020\u0002*\u00020\u0002\u001a$\u0010q\u001a\u00020\u0002*\u00020\u00022\u0012\u0010o\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\bø\u0001��\u001a\u0016\u0010q\u001a\u00020\u0002*\u00020\u00022\n\u0010,\u001a\u00020-\"\u00020\u0011\u001a\r\u0010q\u001a\u00020\n*\u00020\nH\u0087\b\u001a$\u0010q\u001a\u00020\n*\u00020\n2\u0012\u0010o\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\bø\u0001��\u001a\u0016\u0010q\u001a\u00020\n*\u00020\n2\n\u0010,\u001a\u00020-\"\u00020\u0011\"\u0015\u0010��\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006r"}, d2 = {"indices", "Lkotlin/ranges/IntRange;", "", "getIndices", "(Ljava/lang/CharSequence;)Lkotlin/ranges/IntRange;", "lastIndex", "", "getLastIndex", "(Ljava/lang/CharSequence;)I", "commonPrefixWith", "", "other", "ignoreCase", "", "commonSuffixWith", "contains", "char", "", "regex", "Lkotlin/text/Regex;", "endsWith", "suffix", "findAnyOf", "Lkotlin/Pair;", "strings", "", "startIndex", "last", "findAnyOf$StringsKt__StringsKt", "findLastAnyOf", "hasSurrogatePairAt", "index", "ifBlank", "R", "C", "defaultValue", "Lkotlin/Function0;", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "ifEmpty", "indexOf", "endIndex", "indexOf$StringsKt__StringsKt", "string", "indexOfAny", "chars", "", "isEmpty", "isNotBlank", "isNotEmpty", "isNullOrBlank", "isNullOrEmpty", "iterator", "Lkotlin/collections/CharIterator;", "lastIndexOf", "lastIndexOfAny", "lineSequence", "Lkotlin/sequences/Sequence;", "lines", "", "matches", "orEmpty", "padEnd", "length", "padChar", "padStart", "rangesDelimitedBy", "delimiters", "", "limit", "rangesDelimitedBy$StringsKt__StringsKt", "(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lkotlin/sequences/Sequence;", "regionMatchesImpl", "thisOffset", "otherOffset", "removePrefix", "prefix", "removeRange", "range", "removeSuffix", "removeSurrounding", "delimiter", "replace", "transform", "Lkotlin/Function1;", "Lkotlin/text/MatchResult;", "replacement", "replaceAfter", "missingDelimiterValue", "replaceAfterLast", "replaceBefore", "replaceBeforeLast", "replaceFirst", "replaceFirstChar", "replaceFirstCharWithChar", "replaceFirstCharWithCharSequence", "replaceRange", "split", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;", "split$StringsKt__StringsKt", "splitToSequence", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/sequences/Sequence;", "startsWith", "subSequence", EventConstants.START, "end", "substring", "substringAfter", "substringAfterLast", "substringBefore", "substringBeforeLast", "trim", "predicate", "trimEnd", "trimStart", "kotlin-stdlib"}, k = 5, mv = {1, 4, 1}, xi = 1, xs = "kotlin/text/StringsKt")
/* loaded from: classes5-dex2jar.jar:kotlin/h/z.class */
public class z extends y {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\r\n\u0002\b\u0002\u0010��\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "", "", "currentIndex", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/h/z$a.class */
    public static final class a extends r implements Function2<CharSequence, Integer, n<? extends Integer, ? extends Integer>> {

        /* renamed from: a */
        final /* synthetic */ List f36750a;

        /* renamed from: b */
        final /* synthetic */ boolean f36751b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(List list, boolean z) {
            super(2);
            this.f36750a = list;
            this.f36751b = z;
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ n<? extends Integer, ? extends Integer> invoke(CharSequence charSequence, Integer num) {
            n nVar;
            Object obj;
            Object obj2;
            CharSequence receiver = charSequence;
            int intValue = num.intValue();
            p.d(receiver, "$receiver");
            List list = this.f36750a;
            boolean z = this.f36751b;
            if (z || list.size() != 1) {
                c cVar = new c(d.c(intValue, 0), receiver.length());
                if (receiver instanceof String) {
                    int i = cVar.f36664a;
                    int i2 = cVar.f36665b;
                    int i3 = cVar.f36666c;
                    if (i3 < 0 ? i >= i2 : i <= i2) {
                        while (true) {
                            Iterator it2 = list.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    obj2 = null;
                                    break;
                                }
                                obj2 = it2.next();
                                String str = (String) obj2;
                                if (p.a(str, 0, (String) receiver, i, str.length(), z)) {
                                    break;
                                }
                            }
                            String str2 = (String) obj2;
                            if (str2 == null) {
                                if (i == i2) {
                                    break;
                                }
                                i += i3;
                            } else {
                                nVar = t.a(Integer.valueOf(i), str2);
                                break;
                            }
                        }
                    }
                    nVar = null;
                } else {
                    int i4 = cVar.f36664a;
                    int i5 = cVar.f36665b;
                    int i6 = cVar.f36666c;
                    if (i6 < 0 ? i4 >= i5 : i4 <= i5) {
                        while (true) {
                            Iterator it3 = list.iterator();
                            while (true) {
                                if (!it3.hasNext()) {
                                    obj = null;
                                    break;
                                }
                                obj = it3.next();
                                String str3 = (String) obj;
                                if (p.a(str3, 0, receiver, i4, str3.length(), z)) {
                                    break;
                                }
                            }
                            String str4 = (String) obj;
                            if (str4 == null) {
                                if (i4 == i5) {
                                    break;
                                }
                                i4 += i6;
                            } else {
                                nVar = t.a(Integer.valueOf(i4), str4);
                                break;
                            }
                        }
                    }
                    nVar = null;
                }
            } else {
                String str5 = (String) kotlin.a.n.d((Iterable<? extends Object>) list);
                int a2 = p.a(receiver, str5, intValue, false, 4);
                if (a2 >= 0) {
                    nVar = t.a(Integer.valueOf(a2), str5);
                }
                nVar = null;
            }
            if (nVar != null) {
                return t.a(nVar.f36810a, Integer.valueOf(((String) nVar.f36811b).length()));
            }
            return null;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lkotlin/ranges/IntRange;", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/h/z$b.class */
    public static final class b extends r implements Function1<c, String> {

        /* renamed from: a */
        final /* synthetic */ CharSequence f36752a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(CharSequence charSequence) {
            super(1);
            this.f36752a = charSequence;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(c cVar) {
            c it2 = cVar;
            p.d(it2, "it");
            return p.a(this.f36752a, it2);
        }
    }

    public static /* synthetic */ int a(CharSequence charSequence, char c2, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = p.d(charSequence);
        }
        return p.b(charSequence, c2, i, false);
    }

    public static final int a(CharSequence indexOf, char c2, int i, boolean z) {
        p.d(indexOf, "$this$indexOf");
        return (z || !(indexOf instanceof String)) ? p.a(indexOf, new char[]{c2}, i, z) : ((String) indexOf).indexOf(c2, i);
    }

    public static /* synthetic */ int a(CharSequence charSequence, char c2, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return p.a(charSequence, c2, i, z);
    }

    public static final int a(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        c cVar = !z2 ? new c(d.c(i, 0), d.d(i2, charSequence.length())) : d.a(d.d(i, p.d(charSequence)), d.c(i2, 0));
        if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            int i3 = cVar.f36664a;
            int i4 = cVar.f36665b;
            int i5 = cVar.f36666c;
            if (i5 >= 0) {
                if (i3 > i4) {
                    return -1;
                }
            } else if (i3 < i4) {
                return -1;
            }
            while (!p.a(charSequence2, 0, charSequence, i3, charSequence2.length(), z)) {
                if (i3 == i4) {
                    return -1;
                }
                i3 += i5;
            }
            return i3;
        }
        int i6 = cVar.f36664a;
        int i7 = cVar.f36665b;
        int i8 = cVar.f36666c;
        if (i8 >= 0) {
            if (i6 > i7) {
                return -1;
            }
        } else if (i6 < i7) {
            return -1;
        }
        while (!p.a((String) charSequence2, 0, (String) charSequence, i6, charSequence2.length(), z)) {
            if (i6 == i7) {
                return -1;
            }
            i6 += i8;
        }
        return i6;
    }

    public static final int a(CharSequence indexOf, String string, int i, boolean z) {
        p.d(indexOf, "$this$indexOf");
        p.d(string, "string");
        return (z || !(indexOf instanceof String)) ? a(indexOf, (CharSequence) string, i, indexOf.length(), z, false) : ((String) indexOf).indexOf(string, i);
    }

    public static /* synthetic */ int a(CharSequence charSequence, String str, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return p.a(charSequence, str, i, z);
    }

    public static final int a(CharSequence indexOfAny, char[] chars, int i, boolean z) {
        boolean z2;
        p.d(indexOfAny, "$this$indexOfAny");
        p.d(chars, "chars");
        if (z || chars.length != 1 || !(indexOfAny instanceof String)) {
            int c2 = d.c(i, 0);
            int d2 = p.d(indexOfAny);
            if (c2 > d2) {
                return -1;
            }
            while (true) {
                char charAt = indexOfAny.charAt(c2);
                int length = chars.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z2 = false;
                        break;
                    } else if (kotlin.h.a.a(chars[i2], charAt, z)) {
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (z2) {
                    return c2;
                }
                if (c2 == d2) {
                    return -1;
                }
                c2++;
            }
        } else {
            return ((String) indexOfAny).indexOf(i.a(chars), i);
        }
    }

    public static final String a(CharSequence substring, c range) {
        p.d(substring, "$this$substring");
        p.d(range, "range");
        return substring.subSequence(range.f36664a, range.f36665b + 1).toString();
    }

    public static final String a(String substringBefore, char c2, String missingDelimiterValue) {
        p.d(substringBefore, "$this$substringBefore");
        p.d(missingDelimiterValue, "missingDelimiterValue");
        int a2 = p.a((CharSequence) substringBefore, c2, 0, false, 6);
        if (a2 == -1) {
            return missingDelimiterValue;
        }
        String substring = substringBefore.substring(0, a2);
        p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static final String a(String removePrefix, CharSequence prefix) {
        p.d(removePrefix, "$this$removePrefix");
        p.d(prefix, "prefix");
        String str = removePrefix;
        if (p.a((CharSequence) removePrefix, prefix, false)) {
            str = removePrefix.substring(prefix.length());
            p.b(str, "(this as java.lang.String).substring(startIndex)");
        }
        return str;
    }

    private static final List<String> a(CharSequence charSequence, String str, boolean z, int i) {
        int length;
        int a2;
        int i2 = 0;
        if (i >= 0) {
            int a3 = p.a(charSequence, str, 0, z);
            if (a3 == -1 || i == 1) {
                return kotlin.a.n.a(charSequence.toString());
            }
            boolean z2 = i > 0;
            int i3 = 10;
            if (z2) {
                i3 = d.d(i, 10);
            }
            ArrayList arrayList = new ArrayList(i3);
            int i4 = a3;
            do {
                arrayList.add(charSequence.subSequence(i2, i4).toString());
                length = str.length() + i4;
                if (z2 && arrayList.size() == i - 1) {
                    break;
                }
                a2 = p.a(charSequence, str, length, z);
                i2 = length;
                i4 = a2;
            } while (a2 != -1);
            arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
            return arrayList;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + '.').toString());
    }

    public static /* synthetic */ List a(CharSequence split, char[] delimiters) {
        p.d(split, "$this$split");
        p.d(delimiters, "delimiters");
        return a(split, String.valueOf(delimiters[0]), false, 0);
    }

    public static final List<String> a(CharSequence split, String[] delimiters, boolean z, int i) {
        p.d(split, "$this$split");
        p.d(delimiters, "delimiters");
        boolean z2 = true;
        if (delimiters.length == 1) {
            String str = delimiters[0];
            if (str.length() != 0) {
                z2 = false;
            }
            if (!z2) {
                return a(split, str, false, 0);
            }
        }
        Iterable<c> i2 = k.i(b(split, delimiters, false, 0));
        ArrayList arrayList = new ArrayList(kotlin.a.n.a(i2, 10));
        for (c cVar : i2) {
            arrayList.add(p.a(split, cVar));
        }
        return arrayList;
    }

    public static final boolean a(CharSequence startsWith, char c2, boolean z) {
        p.d(startsWith, "$this$startsWith");
        return startsWith.length() > 0 && kotlin.h.a.a(startsWith.charAt(0), '0', false);
    }

    public static final boolean a(CharSequence regionMatchesImpl, int i, CharSequence other, int i2, int i3, boolean z) {
        p.d(regionMatchesImpl, "$this$regionMatchesImpl");
        p.d(other, "other");
        if (i2 < 0 || i < 0 || i > regionMatchesImpl.length() - i3 || i2 > other.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!kotlin.h.a.a(regionMatchesImpl.charAt(i + i4), other.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean a(CharSequence startsWith, CharSequence prefix, boolean z) {
        p.d(startsWith, "$this$startsWith");
        p.d(prefix, "prefix");
        return (!(startsWith instanceof String) || !(prefix instanceof String)) ? p.a(startsWith, 0, prefix, 0, prefix.length(), false) : p.a((String) startsWith, (String) prefix, false);
    }

    public static final int b(CharSequence lastIndexOfAny, char c2, int i, boolean z) {
        boolean z2;
        p.d(lastIndexOfAny, "$this$lastIndexOf");
        boolean z3 = lastIndexOfAny instanceof String;
        if (z3) {
            return ((String) lastIndexOfAny).lastIndexOf(c2, i);
        }
        char[] chars = {c2};
        p.d(lastIndexOfAny, "$this$lastIndexOfAny");
        p.d(chars, "chars");
        if (z3) {
            return ((String) lastIndexOfAny).lastIndexOf(i.a(chars), i);
        }
        for (int d2 = d.d(i, p.d(lastIndexOfAny)); d2 >= 0; d2--) {
            char charAt = lastIndexOfAny.charAt(d2);
            int i2 = 0;
            while (true) {
                if (i2 > 0) {
                    z2 = false;
                    break;
                } else if (kotlin.h.a.a(chars[i2], charAt, false)) {
                    z2 = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (z2) {
                return d2;
            }
        }
        return -1;
    }

    public static final int b(CharSequence lastIndexOf, String string, int i, boolean z) {
        p.d(lastIndexOf, "$this$lastIndexOf");
        p.d(string, "string");
        return !(lastIndexOf instanceof String) ? a(lastIndexOf, (CharSequence) string, i, 0, false, true) : ((String) lastIndexOf).lastIndexOf(string, i);
    }

    public static final CharSequence b(CharSequence trim) {
        p.d(trim, "$this$trim");
        int length = trim.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean a2 = kotlin.h.a.a(trim.charAt(!z ? i : length));
            if (z) {
                if (!a2) {
                    break;
                }
                length--;
            } else if (!a2) {
                z = true;
            } else {
                i++;
            }
        }
        return trim.subSequence(i, length + 1);
    }

    public static final String b(String substringAfter, char c2, String missingDelimiterValue) {
        p.d(substringAfter, "$this$substringAfter");
        p.d(missingDelimiterValue, "missingDelimiterValue");
        int a2 = p.a((CharSequence) substringAfter, '$', 0, false, 6);
        if (a2 == -1) {
            return missingDelimiterValue;
        }
        String substring = substringAfter.substring(a2 + 1, substringAfter.length());
        p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static final String b(String substringBefore, String delimiter, String missingDelimiterValue) {
        p.d(substringBefore, "$this$substringBefore");
        p.d(delimiter, "delimiter");
        p.d(missingDelimiterValue, "missingDelimiterValue");
        int a2 = p.a((CharSequence) substringBefore, delimiter, 0, false, 6);
        if (a2 == -1) {
            return missingDelimiterValue;
        }
        String substring = substringBefore.substring(0, a2);
        p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    private static /* synthetic */ h b(CharSequence charSequence, String[] strArr, boolean z, int i) {
        if (i >= 0) {
            return new e(charSequence, 0, i, new a(i.a(strArr), z));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + '.').toString());
    }

    public static final boolean b(CharSequence contains, char c2, boolean z) {
        p.d(contains, "$this$contains");
        return p.a(contains, c2, 0, false, 2) >= 0;
    }

    public static final boolean b(CharSequence endsWith, CharSequence suffix, boolean z) {
        p.d(endsWith, "$this$endsWith");
        p.d(suffix, "suffix");
        return endsWith instanceof String ? p.b((String) endsWith, (String) suffix, false) : p.a(endsWith, endsWith.length() - suffix.length(), suffix, 0, suffix.length(), false);
    }

    public static final String c(String substringAfterLast, char c2, String missingDelimiterValue) {
        p.d(substringAfterLast, "$this$substringAfterLast");
        p.d(missingDelimiterValue, "missingDelimiterValue");
        int a2 = p.a(substringAfterLast, c2, 0, 6);
        if (a2 == -1) {
            return missingDelimiterValue;
        }
        String substring = substringAfterLast.substring(a2 + 1, substringAfterLast.length());
        p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static final String c(String substringAfter, String delimiter, String missingDelimiterValue) {
        p.d(substringAfter, "$this$substringAfter");
        p.d(delimiter, "delimiter");
        p.d(missingDelimiterValue, "missingDelimiterValue");
        int a2 = p.a((CharSequence) substringAfter, delimiter, 0, false, 6);
        if (a2 == -1) {
            return missingDelimiterValue;
        }
        String substring = substringAfter.substring(a2 + delimiter.length(), substringAfter.length());
        p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static final c c(CharSequence indices) {
        p.d(indices, "$this$indices");
        return new c(0, indices.length() - 1);
    }

    public static final boolean c(CharSequence contains, CharSequence other, boolean z) {
        p.d(contains, "$this$contains");
        p.d(other, "other");
        return other instanceof String ? p.a(contains, (String) other, 0, false, 2) >= 0 : a(contains, other, 0, contains.length(), false, false) >= 0;
    }

    public static final int d(CharSequence lastIndex) {
        p.d(lastIndex, "$this$lastIndex");
        return lastIndex.length() - 1;
    }

    public static final String d(String substringBeforeLast, String missingDelimiterValue) {
        p.d(substringBeforeLast, "$this$substringBeforeLast");
        p.d(missingDelimiterValue, "missingDelimiterValue");
        int a2 = p.a((CharSequence) substringBeforeLast, '/', 0, 6);
        if (a2 == -1) {
            return missingDelimiterValue;
        }
        String substring = substringBeforeLast.substring(0, a2);
        p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static final h<String> e(CharSequence splitToSequence) {
        p.d(splitToSequence, "$this$lineSequence");
        String[] delimiters = {"\r\n", StringUtils.LF, StringUtils.CR};
        p.d(splitToSequence, "$this$splitToSequence");
        p.d(delimiters, "delimiters");
        return k.d(b(splitToSequence, delimiters, false, 0), new b(splitToSequence));
    }

    public static final List<String> f(CharSequence lines) {
        p.d(lines, "$this$lines");
        return k.f(p.e(lines));
    }
}
