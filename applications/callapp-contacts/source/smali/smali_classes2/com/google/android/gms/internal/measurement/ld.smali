.class public final Lcom/google/android/gms/internal/measurement/ld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ek;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/ek<",
        "Lcom/google/android/gms/internal/measurement/le;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/ld;


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/ek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/ek<",
            "Lcom/google/android/gms/internal/measurement/le;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/ld;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ld;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ld;->a:Lcom/google/android/gms/internal/measurement/ld;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/lf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lf;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/eo;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/eo;->a(Lcom/google/android/gms/internal/measurement/ek;)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ld;->b:Lcom/google/android/gms/internal/measurement/ek;

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ld;->a:Lcom/google/android/gms/internal/measurement/ld;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ld;->f()Lcom/google/android/gms/internal/measurement/le;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/le;->a()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ld;->a:Lcom/google/android/gms/internal/measurement/ld;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ld;->f()Lcom/google/android/gms/internal/measurement/le;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/le;->b()Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ld;->a:Lcom/google/android/gms/internal/measurement/ld;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ld;->f()Lcom/google/android/gms/internal/measurement/le;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/le;->c()Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ld;->a:Lcom/google/android/gms/internal/measurement/ld;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ld;->f()Lcom/google/android/gms/internal/measurement/le;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/le;->d()Z

    move-result v0

    return v0
.end method

.method private f()Lcom/google/android/gms/internal/measurement/le;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ld;->b:Lcom/google/android/gms/internal/measurement/ek;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ek;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/le;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ld;->f()Lcom/google/android/gms/internal/measurement/le;

    move-result-object v0

    return-object v0
.end method
