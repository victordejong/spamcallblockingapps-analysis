.class public final Lcom/google/android/datatransport/cct/internal/b;
.super Ljava/lang/Object;
.source "AutoBatchedLogRequestEncoder.java"

# interfaces
.implements Lcom/google/firebase/encoders/g/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/internal/b$f;,
        Lcom/google/android/datatransport/cct/internal/b$d;,
        Lcom/google/android/datatransport/cct/internal/b$a;,
        Lcom/google/android/datatransport/cct/internal/b$c;,
        Lcom/google/android/datatransport/cct/internal/b$e;,
        Lcom/google/android/datatransport/cct/internal/b$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/encoders/g/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/b;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b;->a:Lcom/google/firebase/encoders/g/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/encoders/g/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/encoders/g/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/datatransport/cct/internal/j;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/b$b;->a:Lcom/google/android/datatransport/cct/internal/b$b;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 2
    const-class v0, Lcom/google/android/datatransport/cct/internal/d;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 3
    const-class v0, Lcom/google/android/datatransport/cct/internal/l;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/b$e;->a:Lcom/google/android/datatransport/cct/internal/b$e;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 4
    const-class v0, Lcom/google/android/datatransport/cct/internal/g;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 5
    const-class v0, Lcom/google/android/datatransport/cct/internal/ClientInfo;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/b$c;->a:Lcom/google/android/datatransport/cct/internal/b$c;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 6
    const-class v0, Lcom/google/android/datatransport/cct/internal/e;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 7
    const-class v0, Lcom/google/android/datatransport/cct/internal/a;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/b$a;->a:Lcom/google/android/datatransport/cct/internal/b$a;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 8
    const-class v0, Lcom/google/android/datatransport/cct/internal/c;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 9
    const-class v0, Lcom/google/android/datatransport/cct/internal/k;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/b$d;->a:Lcom/google/android/datatransport/cct/internal/b$d;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 10
    const-class v0, Lcom/google/android/datatransport/cct/internal/f;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 11
    const-class v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/b$f;->a:Lcom/google/android/datatransport/cct/internal/b$f;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 12
    const-class v0, Lcom/google/android/datatransport/cct/internal/i;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    return-void
.end method
