.class Lcom/unknownphone/callblocker/c/a$2;
.super Ljava/lang/Object;
.source "GlobalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/c/a$a;

.field final synthetic b:Z

.field final synthetic c:Lcom/unknownphone/callblocker/c/a;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/c/a;Lcom/unknownphone/callblocker/c/a$a;Z)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/unknownphone/callblocker/c/a$2;->c:Lcom/unknownphone/callblocker/c/a;

    iput-object p2, p0, Lcom/unknownphone/callblocker/c/a$2;->a:Lcom/unknownphone/callblocker/c/a$a;

    iput-boolean p3, p0, Lcom/unknownphone/callblocker/c/a$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$2;->a:Lcom/unknownphone/callblocker/c/a$a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a$a;->a(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    iget-boolean v1, p0, Lcom/unknownphone/callblocker/c/a$2;->b:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 416
    return-void
.end method
