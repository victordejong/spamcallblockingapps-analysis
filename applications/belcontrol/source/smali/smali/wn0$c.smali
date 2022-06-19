.class public Lwn0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lbm0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwn0;->x(Lfo0;Lcom/facebook/login/LoginClient$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lwn0;


# direct methods
.method public constructor <init>(Lwn0;)V
    .locals 0

    iput-object p1, p0, Lwn0$c;->a:Lwn0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lwn0$c;->a:Lwn0;

    invoke-virtual {v0, p1, p2}, Lwn0;->p(ILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method
