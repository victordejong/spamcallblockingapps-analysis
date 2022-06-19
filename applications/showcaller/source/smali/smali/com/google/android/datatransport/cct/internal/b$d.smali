.class final Lcom/google/android/datatransport/cct/internal/b$d;
.super Ljava/lang/Object;
.source "AutoBatchedLogRequestEncoder.java"

# interfaces
.implements Lcom/google/firebase/encoders/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/c<",
        "Lcom/google/android/datatransport/cct/internal/k;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/cct/internal/b$d;

.field private static final b:Lcom/google/firebase/encoders/b;

.field private static final c:Lcom/google/firebase/encoders/b;

.field private static final d:Lcom/google/firebase/encoders/b;

.field private static final e:Lcom/google/firebase/encoders/b;

.field private static final f:Lcom/google/firebase/encoders/b;

.field private static final g:Lcom/google/firebase/encoders/b;

.field private static final h:Lcom/google/firebase/encoders/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/b$d;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/b$d;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->a:Lcom/google/android/datatransport/cct/internal/b$d;

    const-string v0, "eventTimeMs"

    .line 2
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->b:Lcom/google/firebase/encoders/b;

    const-string v0, "eventCode"

    .line 3
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->c:Lcom/google/firebase/encoders/b;

    const-string v0, "eventUptimeMs"

    .line 4
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->d:Lcom/google/firebase/encoders/b;

    const-string v0, "sourceExtension"

    .line 5
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->e:Lcom/google/firebase/encoders/b;

    const-string v0, "sourceExtensionJsonProto3"

    .line 6
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->f:Lcom/google/firebase/encoders/b;

    const-string v0, "timezoneOffsetSeconds"

    .line 7
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->g:Lcom/google/firebase/encoders/b;

    const-string v0, "networkConnectionInfo"

    .line 8
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->h:Lcom/google/firebase/encoders/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/datatransport/cct/internal/k;

    check-cast p2, Lcom/google/firebase/encoders/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/b$d;->b(Lcom/google/android/datatransport/cct/internal/k;Lcom/google/firebase/encoders/d;)V

    return-void
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/k;Lcom/google/firebase/encoders/d;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->b:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/k;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/firebase/encoders/d;->b(Lcom/google/firebase/encoders/b;J)Lcom/google/firebase/encoders/d;

    .line 2
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->c:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/k;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 3
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->d:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/k;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/firebase/encoders/d;->b(Lcom/google/firebase/encoders/b;J)Lcom/google/firebase/encoders/d;

    .line 4
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->e:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/k;->f()[B

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 5
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->f:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/k;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 6
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->g:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/k;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/firebase/encoders/d;->b(Lcom/google/firebase/encoders/b;J)Lcom/google/firebase/encoders/d;

    .line 7
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->h:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/k;->e()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    return-void
.end method
