.class public final Lt2/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr5/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr5/d<",
        "Lt2/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lt2/b$f;

.field public static final b:Lr5/c;

.field public static final c:Lr5/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt2/b$f;

    invoke-direct {v0}, Lt2/b$f;-><init>()V

    sput-object v0, Lt2/b$f;->a:Lt2/b$f;

    const-string v0, "networkType"

    .line 2
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lt2/b$f;->b:Lr5/c;

    const-string v0, "mobileSubtype"

    .line 3
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lt2/b$f;->c:Lr5/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lt2/o;

    check-cast p2, Lr5/e;

    .line 2
    sget-object v0, Lt2/b$f;->b:Lr5/c;

    invoke-virtual {p1}, Lt2/o;->b()Lt2/o$b;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 3
    sget-object v0, Lt2/b$f;->c:Lr5/c;

    invoke-virtual {p1}, Lt2/o;->a()Lt2/o$a;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    return-void
.end method
