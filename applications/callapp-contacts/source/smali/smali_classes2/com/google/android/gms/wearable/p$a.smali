.class public final Lcom/google/android/gms/wearable/p$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/p$a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Looper;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/p$a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    iget-object p1, p1, Lcom/google/android/gms/wearable/p$a$a;->a:Landroid/os/Looper;

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/wearable/p$a;->a:Landroid/os/Looper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/p$a$a;Lcom/google/android/gms/wearable/x;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/p$a;-><init>(Lcom/google/android/gms/wearable/p$a$a;)V

    return-void
.end method
