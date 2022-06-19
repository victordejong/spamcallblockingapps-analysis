.class public abstract Lscala/Boolean;
.super Ljava/lang/Object;
.source "Boolean.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001u3Q!\u0001\u0002\u0002\u0006\u0015\u0011qAQ8pY\u0016\u000cgNC\u0001\u0004\u0003\u0015\u00198-\u00197b\u0007\u0001\u0019\"\u0001\u0001\u0004\u0011\u0005\u001dAQ\"\u0001\u0002\n\u0005%\u0011!AB!osZ\u000bG\u000eC\u0003\u000c\u0001\u0011\u0005A\"\u0001\u0004=S:LGO\u0010\u000b\u0002\u001bA\u0011q\u0001\u0001\u0005\u0006\u001f\u00011\t\u0001E\u0001\u000ck:\u000c\'/_0%E\u0006tw-F\u0001\u000e\u0011\u0015\u0011\u0002A\"\u0001\u0014\u0003\u0019!S-\u001d\u0013fcR\u0011Q\u0002\u0006\u0005\u0006+E\u0001\r!D\u0001\u0002q\")q\u0003\u0001D\u00011\u0005AAEY1oO\u0012*\u0017\u000f\u0006\u0002\u000e3!)QC\u0006a\u0001\u001b!)1\u0004\u0001D\u00019\u0005AAEY1sI\t\u000c\'\u000f\u0006\u0002\u000e;!)QC\u0007a\u0001\u001b!)q\u0004\u0001D\u0001A\u0005AA%Y7qI\u0005l\u0007\u000f\u0006\u0002\u000eC!)QC\u0008a\u0001\u001b!)1\u0005\u0001D\u0001I\u0005!AEY1s)\tiQ\u0005C\u0003\u0016E\u0001\u0007Q\u0002C\u0003(\u0001\u0019\u0005\u0001&\u0001\u0003%C6\u0004HCA\u0007*\u0011\u0015)b\u00051\u0001\u000e\u0011\u0015Y\u0003A\"\u0001-\u0003\r!S\u000f\u001d\u000b\u0003\u001b5BQ!\u0006\u0016A\u00025AQa\u000c\u0001\u0005BA\n\u0001bZ3u\u00072\u000c7o\u001d\u000b\u0002cA\u0019!\'N\u0007\u000f\u0005\u001d\u0019\u0014B\u0001\u001b\u0003\u0003\u0019\u0001&/\u001a3fM&\u0011ag\u000e\u0002\u0006\u00072\u000c7o\u001d\u0006\u0003i\t9Q!\u000f\u0002\t\u0002i\nqAQ8pY\u0016\u000cg\u000e\u0005\u0002\u0008w\u0019)\u0011A\u0001E\u0001yM\u00191(\u0010!\u0011\u0005\u001dq\u0014BA \u0003\u0005\u0019\te.\u001f*fMB\u0011q!Q\u0005\u0003\u0005\n\u0011q\"\u00118z-\u0006d7i\\7qC:LwN\u001c\u0005\u0006\u0017m\"\t\u0001\u0012\u000b\u0002u!)ai\u000fC\u0001\u000f\u0006\u0019!m\u001c=\u0015\u0005!{\u0005CA%O\u001b\u0005Q%BA&M\u0003\u0011a\u0017M\\4\u000b\u00035\u000bAA[1wC&\u0011\u0011A\u0013\u0005\u0006+\u0015\u0003\r!\u0004\u0005\u0006#n\"\tAU\u0001\u0006k:\u0014w\u000e\u001f\u000b\u0003\u001bMCQ!\u0006)A\u0002Q\u0003\"!S+\n\u0005YS%AB(cU\u0016\u001cG\u000fC\u0003Yw\u0011\u0005\u0013,\u0001\u0005u_N#(/\u001b8h)\u0005Q\u0006CA%\\\u0013\ta&J\u0001\u0004TiJLgn\u001a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static box(Z)Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lscala/Boolean$;->MODULE$:Lscala/Boolean$;

    invoke-virtual {v0, p0}, Lscala/Boolean$;->box(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/Boolean$;->MODULE$:Lscala/Boolean$;

    invoke-virtual {v0}, Lscala/Boolean$;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unbox(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lscala/Boolean$;->MODULE$:Lscala/Boolean$;

    invoke-virtual {v0, p0}, Lscala/Boolean$;->unbox(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract $amp(Z)Z
.end method

.method public abstract $amp$amp(Z)Z
.end method

.method public abstract $bang$eq(Z)Z
.end method

.method public abstract $bar(Z)Z
.end method

.method public abstract $bar$bar(Z)Z
.end method

.method public abstract $eq$eq(Z)Z
.end method

.method public abstract $up(Z)Z
.end method

.method public abstract unary_$bang()Z
.end method
