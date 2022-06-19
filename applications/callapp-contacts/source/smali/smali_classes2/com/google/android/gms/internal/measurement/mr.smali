.class public final Lcom/google/android/gms/internal/measurement/mr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ek;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/ek<",
        "Lcom/google/android/gms/internal/measurement/ms;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/mr;


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/ek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/ek<",
            "Lcom/google/android/gms/internal/measurement/ms;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/mr;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/mr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/mr;->a:Lcom/google/android/gms/internal/measurement/mr;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/mt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/mt;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/eo;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/eo;->a(Lcom/google/android/gms/internal/measurement/ek;)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/mr;->b:Lcom/google/android/gms/internal/measurement/ek;

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/mr;->a:Lcom/google/android/gms/internal/measurement/mr;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/mr;->c()Lcom/google/android/gms/internal/measurement/ms;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ms;->a()Z

    move-result v0

    return v0
.end method

.method private c()Lcom/google/android/gms/internal/measurement/ms;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/mr;->b:Lcom/google/android/gms/internal/measurement/ek;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ek;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ms;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/mr;->c()Lcom/google/android/gms/internal/measurement/ms;

    move-result-object v0

    return-object v0
.end method
