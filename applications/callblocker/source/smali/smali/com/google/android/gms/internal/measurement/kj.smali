.class public final Lcom/google/android/gms/internal/measurement/kj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/by;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/by",
        "<",
        "Lcom/google/android/gms/internal/measurement/ki;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/internal/measurement/kj;


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/by;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/by",
            "<",
            "Lcom/google/android/gms/internal/measurement/ki;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/gms/internal/measurement/kj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/kj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/kj;->a:Lcom/google/android/gms/internal/measurement/kj;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/kl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/kl;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/cb;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/by;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/kj;-><init>(Lcom/google/android/gms/internal/measurement/by;)V

    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/by;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/by",
            "<",
            "Lcom/google/android/gms/internal/measurement/ki;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/cb;->a(Lcom/google/android/gms/internal/measurement/by;)Lcom/google/android/gms/internal/measurement/by;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/kj;->b:Lcom/google/android/gms/internal/measurement/by;

    .line 7
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/kj;->a:Lcom/google/android/gms/internal/measurement/kj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/kj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ki;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ki;->a()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/kj;->a:Lcom/google/android/gms/internal/measurement/kj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/kj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ki;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ki;->b()Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/kj;->a:Lcom/google/android/gms/internal/measurement/kj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/kj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ki;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ki;->c()Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/kj;->a:Lcom/google/android/gms/internal/measurement/kj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/kj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ki;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ki;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/kj;->b:Lcom/google/android/gms/internal/measurement/by;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/by;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ki;

    .line 12
    return-object v0
.end method
