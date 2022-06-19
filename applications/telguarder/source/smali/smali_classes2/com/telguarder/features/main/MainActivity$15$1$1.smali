.class Lcom/telguarder/features/main/MainActivity$15$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/main/MainActivity$15$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/telguarder/features/main/MainActivity$15$1;


# direct methods
.method constructor <init>(Lcom/telguarder/features/main/MainActivity$15$1;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity$15$1$1;->this$2:Lcom/telguarder/features/main/MainActivity$15$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 727
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$15$1$1;->this$2:Lcom/telguarder/features/main/MainActivity$15$1;

    iget-object v0, v0, Lcom/telguarder/features/main/MainActivity$15$1;->this$1:Lcom/telguarder/features/main/MainActivity$15;

    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity$15$1$1;->this$2:Lcom/telguarder/features/main/MainActivity$15$1;

    iget-object v1, v1, Lcom/telguarder/features/main/MainActivity$15$1;->val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iget-object v2, p0, Lcom/telguarder/features/main/MainActivity$15$1$1;->this$2:Lcom/telguarder/features/main/MainActivity$15$1;

    iget-boolean v2, v2, Lcom/telguarder/features/main/MainActivity$15$1;->val$cached:Z

    invoke-static {v0, v1, v2}, Lcom/telguarder/features/main/MainActivity$15;->access$1900(Lcom/telguarder/features/main/MainActivity$15;Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V

    return-void
.end method
