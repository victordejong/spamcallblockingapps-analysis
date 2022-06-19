.class public final Lcom/google/android/gms/internal/measurement/iz;
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
        "Lcom/google/android/gms/internal/measurement/iy;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/internal/measurement/iz;


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/by;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/by",
            "<",
            "Lcom/google/android/gms/internal/measurement/iy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/gms/internal/measurement/iz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/iz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/iz;->a:Lcom/google/android/gms/internal/measurement/iz;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/measurement/jb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/jb;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/cb;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/by;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/iz;-><init>(Lcom/google/android/gms/internal/measurement/by;)V

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
            "Lcom/google/android/gms/internal/measurement/iy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/cb;->a(Lcom/google/android/gms/internal/measurement/by;)Lcom/google/android/gms/internal/measurement/by;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/iz;->b:Lcom/google/android/gms/internal/measurement/by;

    .line 8
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/iz;->a:Lcom/google/android/gms/internal/measurement/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/iz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/iy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/iy;->a()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/iz;->a:Lcom/google/android/gms/internal/measurement/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/iz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/iy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/iy;->b()Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/iz;->a:Lcom/google/android/gms/internal/measurement/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/iz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/iy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/iy;->c()Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/iz;->a:Lcom/google/android/gms/internal/measurement/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/iz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/iy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/iy;->d()Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/iz;->a:Lcom/google/android/gms/internal/measurement/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/iz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/iy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/iy;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/iz;->b:Lcom/google/android/gms/internal/measurement/by;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/by;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/iy;

    .line 13
    return-object v0
.end method
