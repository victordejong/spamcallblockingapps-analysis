.class public final Lcom/google/android/gms/common/api/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/f$a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/f$a;


# instance fields
.field public final b:Lcom/google/android/gms/common/api/internal/q;

.field public final c:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/f$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/f$a$a;-><init>()V

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f$a$a;->a()Lcom/google/android/gms/common/api/f$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/f$a;->a:Lcom/google/android/gms/common/api/f$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/api/internal/q;Landroid/accounts/Account;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/f$a;->b:Lcom/google/android/gms/common/api/internal/q;

    iput-object p3, p0, Lcom/google/android/gms/common/api/f$a;->c:Landroid/os/Looper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/q;Landroid/accounts/Account;Landroid/os/Looper;Lcom/google/android/gms/common/api/t;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/f$a;-><init>(Lcom/google/android/gms/common/api/internal/q;Landroid/accounts/Account;Landroid/os/Looper;)V

    return-void
.end method
