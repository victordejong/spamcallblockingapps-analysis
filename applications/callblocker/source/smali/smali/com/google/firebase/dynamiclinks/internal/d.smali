.class public final Lcom/google/firebase/dynamiclinks/internal/d;
.super Lcom/google/android/gms/common/api/c;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/c",
        "<",
        "Lcom/google/android/gms/common/api/a$d$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g",
            "<",
            "Lcom/google/firebase/dynamiclinks/internal/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a",
            "<",
            "Lcom/google/firebase/dynamiclinks/internal/e;",
            "Lcom/google/android/gms/common/api/a$d$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<",
            "Lcom/google/android/gms/common/api/a$d$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/firebase/dynamiclinks/internal/d;->b:Lcom/google/android/gms/common/api/a$g;

    .line 4
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/c;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/internal/c;-><init>()V

    sput-object v0, Lcom/google/firebase/dynamiclinks/internal/d;->c:Lcom/google/android/gms/common/api/a$a;

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string/jumbo v1, "DynamicLinks.API"

    sget-object v2, Lcom/google/firebase/dynamiclinks/internal/d;->c:Lcom/google/android/gms/common/api/a$a;

    sget-object v3, Lcom/google/firebase/dynamiclinks/internal/d;->b:Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lcom/google/firebase/dynamiclinks/internal/d;->d:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1
    sget-object v0, Lcom/google/firebase/dynamiclinks/internal/d;->d:Lcom/google/android/gms/common/api/a;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/common/api/c$a;->a:Lcom/google/android/gms/common/api/c$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/c$a;)V

    .line 2
    return-void
.end method
