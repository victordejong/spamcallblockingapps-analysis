.class final Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Landroid/view/ViewParent;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;Ljava/lang/String;ILandroid/view/ViewParent;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;->b:Ljava/lang/String;

    iput p3, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;->c:I

    iput-object p4, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;->d:Landroid/view/ViewParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/contacts/util/glide/GlideUtils;->a(Ljava/lang/String;)Lcom/bumptech/glide/e/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->a(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;Lcom/bumptech/glide/e/c;)V

    .line 261
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->g(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;)Lcom/bumptech/glide/e/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-interface {v0}, Lcom/bumptech/glide/e/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->a(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;Landroid/graphics/Bitmap;)V

    .line 264
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->h(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1$$special$$inlined$let$lambda$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1$$special$$inlined$let$lambda$2;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :cond_1
    return-void
.end method
