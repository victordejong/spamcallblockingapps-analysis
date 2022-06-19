.class public final Lscala/runtime/RichException;
.super Ljava/lang/Object;
.source "RichException.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u000152A!\u0001\u0002\u0003\u000f\ti!+[2i\u000bb\u001cW\r\u001d;j_:T!a\u0001\u0003\u0002\u000fI,h\u000e^5nK*\tQ!A\u0003tG\u0006d\u0017m\u0001\u0001\u0014\u0005\u0001A\u0001CA\u0005\u000b\u001b\u0005!\u0011BA\u0006\u0005\u0005\u0019\te.\u001f*fM\"AQ\u0002\u0001B\u0001B\u0003%a\"A\u0002fq\u000e\u0004\"a\u0004\n\u000f\u0005%\u0001\u0012BA\t\u0005\u0003\u001d\u0001\u0018mY6bO\u0016L!a\u0005\u000b\u0003\u0013QC\'o\\<bE2,\'BA\t\u0005\u0011\u00151\u0002\u0001\"\u0001\u0018\u0003\u0019a\u0014N\\5u}Q\u0011\u0001D\u0007\t\u00033\u0001i\u0011A\u0001\u0005\u0006\u001bU\u0001\rA\u0004\u0005\u00069\u0001!\t!H\u0001\u0014O\u0016$8\u000b^1dWR\u0013\u0018mY3TiJLgnZ\u000b\u0002=A\u0011qD\t\u0008\u0003\u0013\u0001J!!\t\u0003\u0002\rA\u0013X\rZ3g\u0013\t\u0019CE\u0001\u0004TiJLgn\u001a\u0006\u0003C\u0011AC\u0001\u0001\u0014*WA\u0011\u0011bJ\u0005\u0003Q\u0011\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u0005Q\u0013aG+tK\u0002\"\u0006N]8xC\ndWmI4fiN#\u0018mY6Ue\u0006\u001cW-I\u0001-\u0003\u0019\u0011d&M\u0019/a\u0001"
.end annotation


# instance fields
.field private final exc:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lscala/runtime/RichException;->exc:Ljava/lang/Throwable;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStackTraceString()Ljava/lang/String;
    .locals 4

    .line 16
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v1, p0, Lscala/runtime/RichException;->exc:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    sget-object v1, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    invoke-virtual {v1}, Lscala/compat/Platform$;->EOL()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    invoke-virtual {v2}, Lscala/compat/Platform$;->EOL()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v3, v1, v2}, Lscala/collection/mutable/ArrayOps;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
