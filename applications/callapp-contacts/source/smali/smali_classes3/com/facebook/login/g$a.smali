.class public final Lcom/facebook/login/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/login/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity"

    .line 856
    invoke-static {p1, v0}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    iput-object p1, p0, Lcom/facebook/login/g$a;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/facebook/login/g$a;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/facebook/login/g$a;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
