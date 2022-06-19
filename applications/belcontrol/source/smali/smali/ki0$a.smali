.class public Lki0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lki0;->j(Lcom/facebook/AccessToken$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/AccessToken$b;

.field public final synthetic b:Lki0;


# direct methods
.method public constructor <init>(Lki0;Lcom/facebook/AccessToken$b;)V
    .locals 0

    iput-object p1, p0, Lki0$a;->b:Lki0;

    iput-object p2, p0, Lki0$a;->a:Lcom/facebook/AccessToken$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lki0$a;->b:Lki0;

    iget-object v1, p0, Lki0$a;->a:Lcom/facebook/AccessToken$b;

    invoke-static {v0, v1}, Lki0;->a(Lki0;Lcom/facebook/AccessToken$b;)V

    return-void
.end method
