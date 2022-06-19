.class final Lcom/callapp/contacts/util/animation/CallappAnimationUtils$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;FFII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/view/View;FFI)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$5;->a:Landroid/view/View;

    iput p2, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$5;->b:F

    iput p3, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$5;->c:F

    iput p4, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$5;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$5;->a:Landroid/view/View;

    iget v1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$5;->b:F

    iget v2, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$5;->c:F

    iget v3, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$5;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;FFI)V

    return-void
.end method
