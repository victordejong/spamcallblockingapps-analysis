.class public final Lm0/v$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/OnReceiveContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation


# instance fields
.field public final a:Lm0/n;


# direct methods
.method public constructor <init>(Lm0/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm0/v$p;->a:Lm0/n;

    return-void
.end method


# virtual methods
.method public onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 2

    .line 1
    new-instance v0, Lm0/c;

    new-instance v1, Lm0/c$d;

    invoke-direct {v1, p2}, Lm0/c$d;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Lm0/c;-><init>(Lm0/c$e;)V

    .line 2
    iget-object v1, p0, Lm0/v$p;->a:Lm0/n;

    invoke-interface {v1, p1, v0}, Lm0/n;->a(Landroid/view/View;Lm0/c;)Lm0/c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p2

    .line 3
    :cond_1
    iget-object p1, p1, Lm0/c;->a:Lm0/c$e;

    invoke-interface {p1}, Lm0/c$e;->d()Landroid/view/ContentInfo;

    move-result-object p1

    return-object p1
.end method
