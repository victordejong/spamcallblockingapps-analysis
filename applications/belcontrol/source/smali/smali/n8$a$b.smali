.class public Ln8$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln8$a;->callbackFailAsync(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ln8$a;


# direct methods
.method public constructor <init>(Ln8$a;I)V
    .locals 0

    iput-object p1, p0, Ln8$a$b;->b:Ln8$a;

    iput p2, p0, Ln8$a$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ln8$a$b;->b:Ln8$a;

    iget v1, p0, Ln8$a$b;->a:I

    invoke-virtual {v0, v1}, Ln8$a;->onFontRetrievalFailed(I)V

    return-void
.end method
