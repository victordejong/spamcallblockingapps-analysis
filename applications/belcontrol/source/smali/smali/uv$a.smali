.class public Luv$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luv;->z(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Luv;


# direct methods
.method public constructor <init>(Luv;II)V
    .locals 0

    iput-object p1, p0, Luv$a;->c:Luv;

    iput p2, p0, Luv$a;->a:I

    iput p3, p0, Luv$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Luv$a;->c:Luv;

    iget-object v0, v0, Luv;->l:Luv$c;

    iget v1, p0, Luv$a;->a:I

    iget v2, p0, Luv$a;->b:I

    invoke-interface {v0, v1, v2}, Luv$c;->c(II)V

    return-void
.end method
