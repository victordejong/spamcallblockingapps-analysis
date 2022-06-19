.class public Lcom/facebook/login/widget/LoginButton$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/LoginButton$e;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lwn0;


# direct methods
.method public constructor <init>(Lcom/facebook/login/widget/LoginButton$e;Lwn0;)V
    .locals 0

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton$e$a;->a:Lwn0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton$e$a;->a:Lwn0;

    invoke-virtual {p1}, Lwn0;->n()V

    return-void
.end method
