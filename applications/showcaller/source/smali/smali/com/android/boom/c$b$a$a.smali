.class Lcom/android/boom/c$b$a$a;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/boom/c$b$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/android/boom/c$b$a;


# direct methods
.method constructor <init>(Lcom/android/boom/c$b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/boom/c$b$a$a;->d:Lcom/android/boom/c$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
