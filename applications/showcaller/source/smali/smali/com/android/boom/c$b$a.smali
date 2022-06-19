.class Lcom/android/boom/c$b$a;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/boom/c$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/android/boom/c$b;


# direct methods
.method constructor <init>(Lcom/android/boom/c$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/boom/c$b$a;->d:Lcom/android/boom/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/boom/c$b$a;->d:Lcom/android/boom/c$b;

    iget-object v0, v0, Lcom/android/boom/c$b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/boom/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/android/boom/c$b$a$a;

    invoke-direct {v0, p0}, Lcom/android/boom/c$b$a$a;-><init>(Lcom/android/boom/c$b$a;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
