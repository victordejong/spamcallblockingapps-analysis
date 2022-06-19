.class public final Lcom/google/android/gms/internal/measurement/lc;
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
        "Lcom/google/android/gms/internal/measurement/lb;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/internal/measurement/lc;


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/by;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/by",
            "<",
            "Lcom/google/android/gms/internal/measurement/lb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/gms/internal/measurement/lc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/lc;->a:Lcom/google/android/gms/internal/measurement/lc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/measurement/le;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/le;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/cb;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/by;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/lc;-><init>(Lcom/google/android/gms/internal/measurement/by;)V

    .line 10
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/by;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/by",
            "<",
            "Lcom/google/android/gms/internal/measurement/lb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/cb;->a(Lcom/google/android/gms/internal/measurement/by;)Lcom/google/android/gms/internal/measurement/by;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/lc;->b:Lcom/google/android/gms/internal/measurement/by;

    .line 8
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/lc;->a:Lcom/google/android/gms/internal/measurement/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/lc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/lb;->a()Z

    move-result v0

    return v0
.end method

.method public static c()D
    .locals 2

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/lc;->a:Lcom/google/android/gms/internal/measurement/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/lc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/lb;->b()D

    move-result-wide v0

    return-wide v0
.end method

.method public static d()J
    .locals 2

    .prologue
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/lc;->a:Lcom/google/android/gms/internal/measurement/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/lc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/lb;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static e()J
    .locals 2

    .prologue
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/lc;->a:Lcom/google/android/gms/internal/measurement/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/lc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/lb;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/lc;->a:Lcom/google/android/gms/internal/measurement/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/lc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/lb;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lc;->b:Lcom/google/android/gms/internal/measurement/by;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/by;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/lb;

    .line 13
    return-object v0
.end method
