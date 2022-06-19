.class public Lun0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/login/LoginClient$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lun0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lun0;


# direct methods
.method public constructor <init>(Lun0;)V
    .locals 0

    iput-object p1, p0, Lun0$a;->a:Lun0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    iget-object v0, p0, Lun0$a;->a:Lun0;

    invoke-static {v0, p1}, Lun0;->j(Lun0;Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method
