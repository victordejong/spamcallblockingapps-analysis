.class public final Lcom/google/android/gms/internal/measurement/lw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ek;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/ek<",
        "Lcom/google/android/gms/internal/measurement/lx;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/lw;


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/ek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/ek<",
            "Lcom/google/android/gms/internal/measurement/lx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/lw;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/lw;->a:Lcom/google/android/gms/internal/measurement/lw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ly;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ly;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/eo;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/eo;->a(Lcom/google/android/gms/internal/measurement/ek;)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/lw;->b:Lcom/google/android/gms/internal/measurement/ek;

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/lw;->a:Lcom/google/android/gms/internal/measurement/lw;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lw;->g()Lcom/google/android/gms/internal/measurement/lx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/lx;->a()Z

    move-result v0

    return v0
.end method

.method public static c()D
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/lw;->a:Lcom/google/android/gms/internal/measurement/lw;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lw;->g()Lcom/google/android/gms/internal/measurement/lx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/lx;->b()D

    move-result-wide v0

    return-wide v0
.end method

.method public static d()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/lw;->a:Lcom/google/android/gms/internal/measurement/lw;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lw;->g()Lcom/google/android/gms/internal/measurement/lx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/lx;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static e()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/lw;->a:Lcom/google/android/gms/internal/measurement/lw;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lw;->g()Lcom/google/android/gms/internal/measurement/lx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/lx;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/lw;->a:Lcom/google/android/gms/internal/measurement/lw;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lw;->g()Lcom/google/android/gms/internal/measurement/lx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/lx;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/google/android/gms/internal/measurement/lx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lw;->b:Lcom/google/android/gms/internal/measurement/ek;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ek;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/lx;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/lw;->g()Lcom/google/android/gms/internal/measurement/lx;

    move-result-object v0

    return-object v0
.end method
