package p626l.p631e0;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p626l.C14978j;
import p626l.C14985o;
import p626l.p628b0.C14885b;
import p626l.p628b0.C14888d;
import p626l.p628b0.C14896i;
import p626l.p630d0.AbstractC14921e;
import p626l.p630d0.C14930l;
import p626l.p632u.C15011h;
import p626l.p632u.C15013i;
import p626l.p632u.C15020l;
import p626l.p632u.C15022n;
import p626l.p632u.C15029u;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��|\n��\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\f\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0019\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\u001a\u001c\u0010\t\u001a\u00020\n*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u001c\u0010\u000e\u001a\u00020\n*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u001f\u0010\u000f\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\rH\u0086\u0002\u001a\u001f\u0010\u000f\u001a\u00020\r*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\rH\u0086\u0002\u001a\u0015\u0010\u000f\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0087\n\u001a\u001c\u0010\u0014\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u001c\u0010\u0014\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\r\u001a:\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0018\u00010\u0017*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001aE\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0018\u00010\u0017*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\rH\u0002¢\u0006\u0002\b\u001c\u001a:\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0018\u00010\u0017*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u0012\u0010\u001e\u001a\u00020\r*\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u0006\u001a4\u0010 \u001a\u0002H!\"\f\b��\u0010\"*\u00020\u0002*\u0002H!\"\u0004\b\u0001\u0010!*\u0002H\"2\f\u0010#\u001a\b\u0012\u0004\u0012\u0002H!0$H\u0087\b¢\u0006\u0002\u0010%\u001a4\u0010&\u001a\u0002H!\"\f\b��\u0010\"*\u00020\u0002*\u0002H!\"\u0004\b\u0001\u0010!*\u0002H\"2\f\u0010#\u001a\b\u0012\u0004\u0012\u0002H!0$H\u0087\b¢\u0006\u0002\u0010%\u001a&\u0010'\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a;\u0010'\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u001b\u001a\u00020\rH\u0002¢\u0006\u0002\b)\u001a&\u0010'\u001a\u00020\u0006*\u00020\u00022\u0006\u0010*\u001a\u00020\n2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a&\u0010+\u001a\u00020\u0006*\u00020\u00022\u0006\u0010,\u001a\u00020-2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a,\u0010+\u001a\u00020\u0006*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a\r\u0010.\u001a\u00020\r*\u00020\u0002H\u0087\b\u001a\r\u0010/\u001a\u00020\r*\u00020\u0002H\u0087\b\u001a\r\u00100\u001a\u00020\r*\u00020\u0002H\u0087\b\u001a \u00101\u001a\u00020\r*\u0004\u0018\u00010\u0002H\u0087\b\u0082\u0002\u000e\n\f\b��\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010��\u001a \u00102\u001a\u00020\r*\u0004\u0018\u00010\u0002H\u0087\b\u0082\u0002\u000e\n\f\b��\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010��\u001a\r\u00103\u001a\u000204*\u00020\u0002H\u0086\u0002\u001a&\u00105\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a&\u00105\u001a\u00020\u0006*\u00020\u00022\u0006\u0010*\u001a\u00020\n2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a&\u00106\u001a\u00020\u0006*\u00020\u00022\u0006\u0010,\u001a\u00020-2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a,\u00106\u001a\u00020\u0006*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u0010\u00107\u001a\b\u0012\u0004\u0012\u00020\n08*\u00020\u0002\u001a\u0010\u00109\u001a\b\u0012\u0004\u0012\u00020\n0:*\u00020\u0002\u001a\u0015\u0010;\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0087\f\u001a\u000f\u0010<\u001a\u00020\n*\u0004\u0018\u00010\nH\u0087\b\u001a\u001c\u0010=\u001a\u00020\u0002*\u00020\u00022\u0006\u0010>\u001a\u00020\u00062\b\b\u0002\u0010?\u001a\u00020\u0011\u001a\u001c\u0010=\u001a\u00020\n*\u00020\n2\u0006\u0010>\u001a\u00020\u00062\b\b\u0002\u0010?\u001a\u00020\u0011\u001a\u001c\u0010@\u001a\u00020\u0002*\u00020\u00022\u0006\u0010>\u001a\u00020\u00062\b\b\u0002\u0010?\u001a\u00020\u0011\u001a\u001c\u0010@\u001a\u00020\n*\u00020\n2\u0006\u0010>\u001a\u00020\u00062\b\b\u0002\u0010?\u001a\u00020\u0011\u001aG\u0010A\u001a\b\u0012\u0004\u0012\u00020\u000108*\u00020\u00022\u000e\u0010B\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0C2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006H\u0002¢\u0006\u0004\bE\u0010F\u001a=\u0010A\u001a\b\u0012\u0004\u0012\u00020\u000108*\u00020\u00022\u0006\u0010B\u001a\u00020-2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006H\u0002¢\u0006\u0002\bE\u001a4\u0010G\u001a\u00020\r*\u00020\u00022\u0006\u0010H\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010I\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rH��\u001a\u0012\u0010J\u001a\u00020\u0002*\u00020\u00022\u0006\u0010K\u001a\u00020\u0002\u001a\u0012\u0010J\u001a\u00020\n*\u00020\n2\u0006\u0010K\u001a\u00020\u0002\u001a\u001a\u0010L\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u0006\u001a\u0012\u0010L\u001a\u00020\u0002*\u00020\u00022\u0006\u0010M\u001a\u00020\u0001\u001a\u001d\u0010L\u001a\u00020\n*\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010L\u001a\u00020\n*\u00020\n2\u0006\u0010M\u001a\u00020\u0001H\u0087\b\u001a\u0012\u0010N\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002\u001a\u0012\u0010N\u001a\u00020\n*\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0002\u001a\u0012\u0010O\u001a\u00020\u0002*\u00020\u00022\u0006\u0010P\u001a\u00020\u0002\u001a\u001a\u0010O\u001a\u00020\u0002*\u00020\u00022\u0006\u0010K\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002\u001a\u0012\u0010O\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u0002\u001a\u001a\u0010O\u001a\u00020\n*\u00020\n2\u0006\u0010K\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002\u001a+\u0010Q\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0014\b\b\u0010R\u001a\u000e\u0012\u0004\u0012\u00020T\u0012\u0004\u0012\u00020\u00020SH\u0087\b\u001a\u001d\u0010Q\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010U\u001a\u00020\nH\u0087\b\u001a$\u0010V\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010V\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010X\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010X\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010Y\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010Y\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010Z\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010Z\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001d\u0010[\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010U\u001a\u00020\nH\u0087\b\u001a\"\u0010\\\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u0002\u001a\u001a\u0010\\\u001a\u00020\u0002*\u00020\u00022\u0006\u0010M\u001a\u00020\u00012\u0006\u0010U\u001a\u00020\u0002\u001a%\u0010\\\u001a\u00020\n*\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u0002H\u0087\b\u001a\u001d\u0010\\\u001a\u00020\n*\u00020\n2\u0006\u0010M\u001a\u00020\u00012\u0006\u0010U\u001a\u00020\u0002H\u0087\b\u001a=\u0010]\u001a\b\u0012\u0004\u0012\u00020\n0:*\u00020\u00022\u0012\u0010B\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0C\"\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006¢\u0006\u0002\u0010^\u001a0\u0010]\u001a\b\u0012\u0004\u0012\u00020\n0:*\u00020\u00022\n\u0010B\u001a\u00020-\"\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006\u001a/\u0010]\u001a\b\u0012\u0004\u0012\u00020\n0:*\u00020\u00022\u0006\u0010P\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010D\u001a\u00020\u0006H\u0002¢\u0006\u0002\b_\u001a%\u0010]\u001a\b\u0012\u0004\u0012\u00020\n0:*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010D\u001a\u00020\u0006H\u0087\b\u001a=\u0010`\u001a\b\u0012\u0004\u0012\u00020\n08*\u00020\u00022\u0012\u0010B\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0C\"\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006¢\u0006\u0002\u0010a\u001a0\u0010`\u001a\b\u0012\u0004\u0012\u00020\n08*\u00020\u00022\n\u0010B\u001a\u00020-\"\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006\u001a\u001c\u0010b\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u001c\u0010b\u001a\u00020\r*\u00020\u00022\u0006\u0010K\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\r\u001a$\u0010b\u001a\u00020\r*\u00020\u00022\u0006\u0010K\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u0012\u0010c\u001a\u00020\u0002*\u00020\u00022\u0006\u0010M\u001a\u00020\u0001\u001a\u001d\u0010c\u001a\u00020\u0002*\u00020\n2\u0006\u0010d\u001a\u00020\u00062\u0006\u0010e\u001a\u00020\u0006H\u0087\b\u001a\u001f\u0010f\u001a\u00020\n*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010(\u001a\u00020\u0006H\u0087\b\u001a\u0012\u0010f\u001a\u00020\n*\u00020\u00022\u0006\u0010M\u001a\u00020\u0001\u001a\u0012\u0010f\u001a\u00020\n*\u00020\n2\u0006\u0010M\u001a\u00020\u0001\u001a\u001c\u0010g\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010g\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010h\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010h\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010i\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010i\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010j\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010j\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a\n\u0010k\u001a\u00020\u0002*\u00020\u0002\u001a!\u0010k\u001a\u00020\u0002*\u00020\u00022\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\b\u001a\u0016\u0010k\u001a\u00020\u0002*\u00020\u00022\n\u0010,\u001a\u00020-\"\u00020\u0011\u001a\r\u0010k\u001a\u00020\n*\u00020\nH\u0087\b\u001a!\u0010k\u001a\u00020\n*\u00020\n2\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\b\u001a\u0016\u0010k\u001a\u00020\n*\u00020\n2\n\u0010,\u001a\u00020-\"\u00020\u0011\u001a\n\u0010m\u001a\u00020\u0002*\u00020\u0002\u001a!\u0010m\u001a\u00020\u0002*\u00020\u00022\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\b\u001a\u0016\u0010m\u001a\u00020\u0002*\u00020\u00022\n\u0010,\u001a\u00020-\"\u00020\u0011\u001a\r\u0010m\u001a\u00020\n*\u00020\nH\u0087\b\u001a!\u0010m\u001a\u00020\n*\u00020\n2\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\b\u001a\u0016\u0010m\u001a\u00020\n*\u00020\n2\n\u0010,\u001a\u00020-\"\u00020\u0011\u001a\n\u0010n\u001a\u00020\u0002*\u00020\u0002\u001a!\u0010n\u001a\u00020\u0002*\u00020\u00022\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\b\u001a\u0016\u0010n\u001a\u00020\u0002*\u00020\u00022\n\u0010,\u001a\u00020-\"\u00020\u0011\u001a\r\u0010n\u001a\u00020\n*\u00020\nH\u0087\b\u001a!\u0010n\u001a\u00020\n*\u00020\n2\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\b\u001a\u0016\u0010n\u001a\u00020\n*\u00020\n2\n\u0010,\u001a\u00020-\"\u00020\u0011\"\u0015\u0010��\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006o"}, m815d2 = {"indices", "Lkotlin/ranges/IntRange;", "", "getIndices", "(Ljava/lang/CharSequence;)Lkotlin/ranges/IntRange;", "lastIndex", "", "getLastIndex", "(Ljava/lang/CharSequence;)I", "commonPrefixWith", "", "other", "ignoreCase", "", "commonSuffixWith", "contains", "char", "", "regex", "Lkotlin/text/Regex;", "endsWith", "suffix", "findAnyOf", "Lkotlin/Pair;", "strings", "", "startIndex", "last", "findAnyOf$StringsKt__StringsKt", "findLastAnyOf", "hasSurrogatePairAt", "index", "ifBlank", "R", "C", "defaultValue", "Lkotlin/Function0;", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "ifEmpty", "indexOf", "endIndex", "indexOf$StringsKt__StringsKt", "string", "indexOfAny", "chars", "", "isEmpty", "isNotBlank", "isNotEmpty", "isNullOrBlank", "isNullOrEmpty", "iterator", "Lkotlin/collections/CharIterator;", "lastIndexOf", "lastIndexOfAny", "lineSequence", "Lkotlin/sequences/Sequence;", "lines", "", "matches", "orEmpty", "padEnd", "length", "padChar", "padStart", "rangesDelimitedBy", "delimiters", "", "limit", "rangesDelimitedBy$StringsKt__StringsKt", "(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lkotlin/sequences/Sequence;", "regionMatchesImpl", "thisOffset", "otherOffset", "removePrefix", "prefix", "removeRange", "range", "removeSuffix", "removeSurrounding", "delimiter", "replace", "transform", "Lkotlin/Function1;", "Lkotlin/text/MatchResult;", "replacement", "replaceAfter", "missingDelimiterValue", "replaceAfterLast", "replaceBefore", "replaceBeforeLast", "replaceFirst", "replaceRange", "split", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;", "split$StringsKt__StringsKt", "splitToSequence", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/sequences/Sequence;", "startsWith", "subSequence", "start", "end", "substring", "substringAfter", "substringAfterLast", "substringBefore", "substringBeforeLast", "trim", "predicate", "trimEnd", "trimStart", "kotlin-stdlib"}, m814k = 5, m813mv = {1, 1, 16}, m811xi = 1, m810xs = "kotlin/text/StringsKt")
/* renamed from: l.e0.x */
/* loaded from: classes3-dex2jar.jar:l/e0/x.class */
public class C14967x extends C14966w {

    /* renamed from: l.e0.x$a */
    /* loaded from: classes3-dex2jar.jar:l/e0/x$a.class */
    public static final class C14968a extends AbstractC15150l implements AbstractC15122p<CharSequence, Integer, C14978j<? extends Integer, ? extends Integer>> {

        /* renamed from: a */
        public final /* synthetic */ char[] f33005a;

        /* renamed from: b */
        public final /* synthetic */ boolean f33006b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14968a(char[] cArr, boolean z) {
            super(2);
            this.f33005a = cArr;
            this.f33006b = z;
        }

        /* renamed from: a */
        public final C14978j<Integer, Integer> m669a(CharSequence charSequence, int i) {
            C15149k.m377b(charSequence, "$receiver");
            int a = C14967x.m699a(charSequence, this.f33005a, i, this.f33006b);
            return a < 0 ? null : C14985o.m644a(Integer.valueOf(a), 1);
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public /* bridge */ /* synthetic */ C14978j<? extends Integer, ? extends Integer> invoke(CharSequence charSequence, Integer num) {
            return m669a(charSequence, num.intValue());
        }
    }

    /* renamed from: l.e0.x$b */
    /* loaded from: classes3-dex2jar.jar:l/e0/x$b.class */
    public static final class C14969b extends AbstractC15150l implements AbstractC15122p<CharSequence, Integer, C14978j<? extends Integer, ? extends Integer>> {

        /* renamed from: a */
        public final /* synthetic */ List f33007a;

        /* renamed from: b */
        public final /* synthetic */ boolean f33008b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14969b(List list, boolean z) {
            super(2);
            this.f33007a = list;
            this.f33008b = z;
        }

        /* renamed from: a */
        public final C14978j<Integer, Integer> m668a(CharSequence charSequence, int i) {
            C15149k.m377b(charSequence, "$receiver");
            C14978j b = C14967x.m681b(charSequence, (Collection<String>) this.f33007a, i, this.f33008b, false);
            return b != null ? C14985o.m644a(b.m659c(), Integer.valueOf(((String) b.m658d()).length())) : null;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public /* bridge */ /* synthetic */ C14978j<? extends Integer, ? extends Integer> invoke(CharSequence charSequence, Integer num) {
            return m668a(charSequence, num.intValue());
        }
    }

    /* renamed from: l.e0.x$c */
    /* loaded from: classes3-dex2jar.jar:l/e0/x$c.class */
    public static final class C14970c extends AbstractC15150l implements AbstractC15118l<C14888d, String> {

        /* renamed from: a */
        public final /* synthetic */ CharSequence f33009a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14970c(CharSequence charSequence) {
            super(1);
            this.f33009a = charSequence;
        }

        /* renamed from: a */
        public final String invoke(C14888d dVar) {
            C15149k.m377b(dVar, "it");
            return C14967x.m700a(this.f33009a, dVar);
        }
    }

    /* renamed from: l.e0.x$d */
    /* loaded from: classes3-dex2jar.jar:l/e0/x$d.class */
    public static final class C14971d extends AbstractC15150l implements AbstractC15118l<C14888d, String> {

        /* renamed from: a */
        public final /* synthetic */ CharSequence f33010a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14971d(CharSequence charSequence) {
            super(1);
            this.f33010a = charSequence;
        }

        /* renamed from: a */
        public final String invoke(C14888d dVar) {
            C15149k.m377b(dVar, "it");
            return C14967x.m700a(this.f33010a, dVar);
        }
    }

    /* renamed from: a */
    public static final int m711a(CharSequence charSequence, char c, int i, boolean z) {
        C15149k.m377b(charSequence, "$this$indexOf");
        return (z || !(charSequence instanceof String)) ? m699a(charSequence, new char[]{c}, i, z) : ((String) charSequence).indexOf(c, i);
    }

    /* renamed from: a */
    public static /* synthetic */ int m710a(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m711a(charSequence, c, i, z);
    }

    /* renamed from: a */
    public static final int m708a(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        C14885b dVar = !z2 ? new C14888d(C14896i.m796a(i, 0), C14896i.m793b(i2, charSequence.length())) : C14896i.m791c(C14896i.m793b(i, m673c(charSequence)), C14896i.m796a(i2, 0));
        if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            int first = dVar.getFirst();
            int last = dVar.getLast();
            int b = dVar.m800b();
            if (b >= 0) {
                if (first > last) {
                    return -1;
                }
            } else if (first < last) {
                return -1;
            }
            while (!m709a(charSequence2, 0, charSequence, first, charSequence2.length(), z)) {
                if (first == last) {
                    return -1;
                }
                first += b;
            }
            return first;
        }
        int first2 = dVar.getFirst();
        int last2 = dVar.getLast();
        int b2 = dVar.m800b();
        if (b2 >= 0) {
            if (first2 > last2) {
                return -1;
            }
        } else if (first2 < last2) {
            return -1;
        }
        while (!C14966w.m720a((String) charSequence2, 0, (String) charSequence, first2, charSequence2.length(), z)) {
            if (first2 == last2) {
                return -1;
            }
            first2 += b2;
        }
        return first2;
    }

    /* renamed from: a */
    public static /* synthetic */ int m707a(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3, Object obj) {
        if ((i3 & 16) != 0) {
            z2 = false;
        }
        return m708a(charSequence, charSequence2, i, i2, z, z2);
    }

    /* renamed from: a */
    public static final int m704a(CharSequence charSequence, String str, int i, boolean z) {
        C15149k.m377b(charSequence, "$this$indexOf");
        C15149k.m377b(str, "string");
        return (z || !(charSequence instanceof String)) ? m707a(charSequence, str, i, charSequence.length(), z, false, 16, null) : ((String) charSequence).indexOf(str, i);
    }

    /* renamed from: a */
    public static /* synthetic */ int m703a(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m704a(charSequence, str, i, z);
    }

    /* renamed from: a */
    public static final int m699a(CharSequence charSequence, char[] cArr, int i, boolean z) {
        boolean z2;
        C15149k.m377b(charSequence, "$this$indexOfAny");
        C15149k.m377b(cArr, "chars");
        if (z || cArr.length != 1 || !(charSequence instanceof String)) {
            int a = C14896i.m796a(i, 0);
            int c = m673c(charSequence);
            if (a > c) {
                return -1;
            }
            while (true) {
                char charAt = charSequence.charAt(a);
                int length = cArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z2 = false;
                        break;
                    } else if (C14937b.m760a(cArr[i2], charAt, z)) {
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (z2) {
                    return a;
                }
                if (a == c) {
                    return -1;
                }
                a++;
            }
        } else {
            return ((String) charSequence).indexOf(C15013i.m592a(cArr), i);
        }
    }

    /* renamed from: a */
    public static final String m700a(CharSequence charSequence, C14888d dVar) {
        C15149k.m377b(charSequence, "$this$substring");
        C15149k.m377b(dVar, "range");
        return charSequence.subSequence(dVar.getStart().intValue(), dVar.getEndInclusive().intValue() + 1).toString();
    }

    /* renamed from: a */
    public static final String m690a(String str, char c, String str2) {
        C15149k.m377b(str, "$this$substringAfterLast");
        C15149k.m377b(str2, "missingDelimiterValue");
        int b = m684b((CharSequence) str, c, 0, false, 6, (Object) null);
        if (b != -1) {
            str2 = str.substring(b + 1, str.length());
            C15149k.m383a((Object) str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return str2;
    }

    /* renamed from: a */
    public static /* synthetic */ String m689a(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return m690a(str, c, str2);
    }

    /* renamed from: a */
    public static final String m688a(String str, String str2, String str3) {
        C15149k.m377b(str, "$this$substringAfter");
        C15149k.m377b(str2, "delimiter");
        C15149k.m377b(str3, "missingDelimiterValue");
        int a = m703a((CharSequence) str, str2, 0, false, 6, (Object) null);
        if (a != -1) {
            str3 = str.substring(a + str2.length(), str.length());
            C15149k.m383a((Object) str3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return str3;
    }

    /* renamed from: a */
    public static /* synthetic */ String m687a(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return m688a(str, str2, str3);
    }

    /* renamed from: a */
    public static final List<String> m702a(CharSequence charSequence, String str, boolean z, int i) {
        int length;
        int a;
        int i2 = 0;
        if (i >= 0) {
            int a2 = m704a(charSequence, str, 0, z);
            if (a2 == -1 || i == 1) {
                return C15020l.m567a(charSequence.toString());
            }
            boolean z2 = i > 0;
            int i3 = 10;
            if (z2) {
                i3 = C14896i.m793b(i, 10);
            }
            ArrayList arrayList = new ArrayList(i3);
            int i4 = a2;
            do {
                arrayList.add(charSequence.subSequence(i2, i4).toString());
                length = str.length() + i4;
                if (z2 && arrayList.size() == i - 1) {
                    break;
                }
                a = m704a(charSequence, str, length, z);
                i2 = length;
                i4 = a;
            } while (a != -1);
            arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
            return arrayList;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + '.').toString());
    }

    /* renamed from: a */
    public static final List<String> m692a(CharSequence charSequence, String[] strArr, boolean z, int i) {
        C15149k.m377b(charSequence, "$this$split");
        C15149k.m377b(strArr, "delimiters");
        if (strArr.length == 1) {
            boolean z2 = false;
            String str = strArr[0];
            if (str.length() == 0) {
                z2 = true;
            }
            if (!z2) {
                return m702a(charSequence, str, z, i);
            }
        }
        Iterable<C14888d> b = C14930l.m771b(m693a(charSequence, strArr, 0, z, i, 2, (Object) null));
        ArrayList arrayList = new ArrayList(C15022n.m555a(b, 10));
        for (C14888d dVar : b) {
            arrayList.add(m700a(charSequence, dVar));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static /* synthetic */ List m691a(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return m692a(charSequence, strArr, z, i);
    }

    /* renamed from: a */
    public static final AbstractC14921e<C14888d> m698a(CharSequence charSequence, char[] cArr, int i, boolean z, int i2) {
        if (i2 >= 0) {
            return new C14939d(charSequence, i, i2, new C14968a(cArr, z));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC14921e m697a(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return m698a(charSequence, cArr, i, z, i2);
    }

    /* renamed from: a */
    public static final AbstractC14921e<String> m696a(CharSequence charSequence, char[] cArr, boolean z, int i) {
        C15149k.m377b(charSequence, "$this$splitToSequence");
        C15149k.m377b(cArr, "delimiters");
        return C14930l.m770b(m697a(charSequence, cArr, 0, z, i, 2, (Object) null), new C14971d(charSequence));
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC14921e m695a(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return m696a(charSequence, cArr, z, i);
    }

    /* renamed from: a */
    public static final AbstractC14921e<C14888d> m694a(CharSequence charSequence, String[] strArr, int i, boolean z, int i2) {
        if (i2 >= 0) {
            return new C14939d(charSequence, i, i2, new C14969b(C15011h.m605a(strArr), z));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC14921e m693a(CharSequence charSequence, String[] strArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return m694a(charSequence, strArr, i, z, i2);
    }

    /* renamed from: a */
    public static final boolean m709a(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        C15149k.m377b(charSequence, "$this$regionMatchesImpl");
        C15149k.m377b(charSequence2, "other");
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!C14937b.m760a(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static final boolean m706a(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        boolean z2;
        C15149k.m377b(charSequence, "$this$contains");
        C15149k.m377b(charSequence2, "other");
        if (charSequence2 instanceof String) {
            if (m703a(charSequence, (String) charSequence2, 0, z, 2, (Object) null) >= 0) {
                z2 = true;
            }
            z2 = false;
        } else {
            if (m707a(charSequence, charSequence2, 0, charSequence.length(), z, false, 16, null) >= 0) {
                z2 = true;
            }
            z2 = false;
        }
        return z2;
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m705a(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return m706a(charSequence, charSequence2, z);
    }

    /* renamed from: b */
    public static final int m685b(CharSequence charSequence, char c, int i, boolean z) {
        C15149k.m377b(charSequence, "$this$lastIndexOf");
        return (z || !(charSequence instanceof String)) ? m680b(charSequence, new char[]{c}, i, z) : ((String) charSequence).lastIndexOf(c, i);
    }

    /* renamed from: b */
    public static /* synthetic */ int m684b(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = m673c(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m685b(charSequence, c, i, z);
    }

    /* renamed from: b */
    public static final int m683b(CharSequence charSequence, String str, int i, boolean z) {
        C15149k.m377b(charSequence, "$this$lastIndexOf");
        C15149k.m377b(str, "string");
        return (z || !(charSequence instanceof String)) ? m708a(charSequence, (CharSequence) str, i, 0, z, true) : ((String) charSequence).lastIndexOf(str, i);
    }

    /* renamed from: b */
    public static /* synthetic */ int m682b(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = m673c(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m683b(charSequence, str, i, z);
    }

    /* renamed from: b */
    public static final int m680b(CharSequence charSequence, char[] cArr, int i, boolean z) {
        C15149k.m377b(charSequence, "$this$lastIndexOfAny");
        C15149k.m377b(cArr, "chars");
        if (z || cArr.length != 1 || !(charSequence instanceof String)) {
            for (int b = C14896i.m793b(i, m673c(charSequence)); b >= 0; b--) {
                char charAt = charSequence.charAt(b);
                int length = cArr.length;
                boolean z2 = false;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (C14937b.m760a(cArr[i2], charAt, z)) {
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (z2) {
                    return b;
                }
            }
            return -1;
        }
        return ((String) charSequence).lastIndexOf(C15013i.m592a(cArr), i);
    }

    /* renamed from: b */
    public static final String m677b(String str, char c, String str2) {
        C15149k.m377b(str, "$this$substringBefore");
        C15149k.m377b(str2, "missingDelimiterValue");
        int a = m710a((CharSequence) str, c, 0, false, 6, (Object) null);
        if (a != -1) {
            str2 = str.substring(0, a);
            C15149k.m383a((Object) str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return str2;
    }

    /* renamed from: b */
    public static /* synthetic */ String m676b(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return m677b(str, c, str2);
    }

    /* renamed from: b */
    public static final String m675b(String str, String str2, String str3) {
        C15149k.m377b(str, "$this$substringBefore");
        C15149k.m377b(str2, "delimiter");
        C15149k.m377b(str3, "missingDelimiterValue");
        int a = m703a((CharSequence) str, str2, 0, false, 6, (Object) null);
        if (a != -1) {
            str3 = str.substring(0, a);
            C15149k.m383a((Object) str3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return str3;
    }

    /* renamed from: b */
    public static /* synthetic */ String m674b(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return m675b(str, str2, str3);
    }

    /* renamed from: b */
    public static final C14888d m686b(CharSequence charSequence) {
        C15149k.m377b(charSequence, "$this$indices");
        return new C14888d(0, charSequence.length() - 1);
    }

    /* renamed from: b */
    public static final AbstractC14921e<String> m679b(CharSequence charSequence, String[] strArr, boolean z, int i) {
        C15149k.m377b(charSequence, "$this$splitToSequence");
        C15149k.m377b(strArr, "delimiters");
        return C14930l.m770b(m693a(charSequence, strArr, 0, z, i, 2, (Object) null), new C14970c(charSequence));
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC14921e m678b(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return m679b(charSequence, strArr, z, i);
    }

    /* renamed from: b */
    public static final C14978j<Integer, String> m681b(CharSequence charSequence, Collection<String> collection, int i, boolean z, boolean z2) {
        Object obj;
        Object obj2;
        C14978j<Integer, String> jVar = null;
        if (z || collection.size() != 1) {
            C14885b dVar = !z2 ? new C14888d(C14896i.m796a(i, 0), charSequence.length()) : C14896i.m791c(C14896i.m793b(i, m673c(charSequence)), 0);
            if (charSequence instanceof String) {
                int first = dVar.getFirst();
                int last = dVar.getLast();
                int b = dVar.m800b();
                if (b >= 0) {
                    if (first > last) {
                        return null;
                    }
                } else if (first < last) {
                    return null;
                }
                while (true) {
                    Iterator<T> it = collection.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj2 = null;
                            break;
                        }
                        obj2 = it.next();
                        String str = (String) obj2;
                        if (C14966w.m720a(str, 0, (String) charSequence, first, str.length(), z)) {
                            break;
                        }
                    }
                    String str2 = (String) obj2;
                    if (str2 != null) {
                        return C14985o.m644a(Integer.valueOf(first), str2);
                    }
                    if (first == last) {
                        return null;
                    }
                    first += b;
                }
            } else {
                int first2 = dVar.getFirst();
                int last2 = dVar.getLast();
                int b2 = dVar.m800b();
                if (b2 >= 0) {
                    if (first2 > last2) {
                        return null;
                    }
                } else if (first2 < last2) {
                    return null;
                }
                while (true) {
                    Iterator<T> it2 = collection.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        String str3 = (String) obj;
                        if (m709a(str3, 0, charSequence, first2, str3.length(), z)) {
                            break;
                        }
                    }
                    String str4 = (String) obj;
                    if (str4 != null) {
                        return C14985o.m644a(Integer.valueOf(first2), str4);
                    }
                    if (first2 == last2) {
                        return null;
                    }
                    first2 += b2;
                }
            }
        } else {
            String str5 = (String) C15029u.m517i(collection);
            int a = !z2 ? m703a(charSequence, str5, i, false, 4, (Object) null) : m682b(charSequence, str5, i, false, 4, (Object) null);
            if (a >= 0) {
                jVar = C14985o.m644a(Integer.valueOf(a), str5);
            }
            return jVar;
        }
    }

    /* renamed from: c */
    public static final int m673c(CharSequence charSequence) {
        C15149k.m377b(charSequence, "$this$lastIndex");
        return charSequence.length() - 1;
    }

    /* renamed from: d */
    public static final AbstractC14921e<String> m672d(CharSequence charSequence) {
        C15149k.m377b(charSequence, "$this$lineSequence");
        return m678b(charSequence, new String[]{"\r\n", "\n", "\r"}, false, 0, 6, (Object) null);
    }

    /* renamed from: e */
    public static final List<String> m671e(CharSequence charSequence) {
        C15149k.m377b(charSequence, "$this$lines");
        return C14930l.m769c(m672d(charSequence));
    }

    /* renamed from: f */
    public static final CharSequence m670f(CharSequence charSequence) {
        C15149k.m377b(charSequence, "$this$trim");
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean a = C14936a.m763a(charSequence.charAt(!z ? i : length));
            if (!z) {
                if (!a) {
                    z = true;
                } else {
                    i++;
                }
            } else if (!a) {
                break;
            } else {
                length--;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }
}
