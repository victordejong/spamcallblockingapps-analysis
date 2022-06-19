.class public Leh1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh1;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Leh1;


# direct methods
.method public constructor <init>(Leh1;)V
    .locals 0

    iput-object p1, p0, Leh1$a;->a:Leh1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Leh1$a;->a:Leh1;

    invoke-virtual {v0}, Leh1;->i()V

    const/4 v0, 0x1

    return v0
.end method
