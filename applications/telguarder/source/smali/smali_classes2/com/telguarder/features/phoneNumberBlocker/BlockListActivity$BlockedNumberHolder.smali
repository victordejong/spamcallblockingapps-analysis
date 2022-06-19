.class Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;
.super Ljava/lang/Object;
.source "BlockListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockedNumberHolder"
.end annotation


# instance fields
.field public delete:Landroid/widget/ImageView;

.field public deleting:Landroid/widget/ProgressBar;

.field public firstLine:Landroid/widget/TextView;

.field public secondLine:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$1;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;-><init>()V

    return-void
.end method
