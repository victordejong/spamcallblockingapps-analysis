.class public final Lt2/b$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr5/d<",
        "Lt2/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lt2/b$d;

.field public static final b:Lr5/c;

.field public static final c:Lr5/c;

.field public static final d:Lr5/c;

.field public static final e:Lr5/c;

.field public static final f:Lr5/c;

.field public static final g:Lr5/c;

.field public static final h:Lr5/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt2/b$d;

    invoke-direct {v0}, Lt2/b$d;-><init>()V

    sput-object v0, Lt2/b$d;->a:Lt2/b$d;

    const-string v0, "eventTimeMs"

    .line 2
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lt2/b$d;->b:Lr5/c;

    const-string v0, "eventCode"

    .line 3
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lt2/b$d;->c:Lr5/c;

    const-string v0, "eventUptimeMs"

    .line 4
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lt2/b$d;->d:Lr5/c;

    const-string v0, "sourceExtension"

    .line 5
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lt2/b$d;->e:Lr5/c;

    const-string v0, "sourceExtensionJsonProto3"

    .line 6
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lt2/b$d;->f:Lr5/c;

    const-string v0, "timezoneOffsetSeconds"

    .line 7
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lt2/b$d;->g:Lr5/c;

    const-string v0, "networkConnectionInfo"

    .line 8
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lt2/b$d;->h:Lr5/c;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lt2/l;

    check-cast p2, Lr5/e;

    .line 2
    sget-object v0, Lt2/b$d;->b:Lr5/c;

    invoke-virtual {p1}, Lt2/l;->b()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lr5/e;->a(Lr5/c;J)Lr5/e;

    .line 3
    sget-object v0, Lt2/b$d;->c:Lr5/c;

    invoke-virtual {p1}, Lt2/l;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 4
    sget-object v0, Lt2/b$d;->d:Lr5/c;

    invoke-virtual {p1}, Lt2/l;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lr5/e;->a(Lr5/c;J)Lr5/e;

    .line 5
    sget-object v0, Lt2/b$d;->e:Lr5/c;

    invoke-virtual {p1}, Lt2/l;->e()[B

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 6
    sget-object v0, Lt2/b$d;->f:Lr5/c;

    invoke-virtual {p1}, Lt2/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 7
    sget-object v0, Lt2/b$d;->g:Lr5/c;

    invoke-virtual {p1}, Lt2/l;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lr5/e;->a(Lr5/c;J)Lr5/e;

    .line 8
    sget-object v0, Lt2/b$d;->h:Lr5/c;

    invoke-virtual {p1}, Lt2/l;->d()Lt2/o;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    return-void
.end method
