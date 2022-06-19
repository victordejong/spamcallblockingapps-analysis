.class public final Lcom/flurry/sdk/lt;
.super Lcom/flurry/sdk/ko;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/lt$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/flurry/sdk/ls;

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.flurry.android.sdk.FlurrySessionEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ko;-><init>(Ljava/lang/String;)V

    return-void
.end method
