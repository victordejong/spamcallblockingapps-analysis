.class public final synthetic Lei;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lfi$a;

.field public final b:I


# direct methods
.method public constructor <init>(Lfi$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lei;->a:Lfi$a;

    iput p2, p0, Lei;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lei;->a:Lfi$a;

    iget v1, p0, Lei;->b:I

    invoke-virtual {v0, v1}, Lfi$a;->g(I)V

    return-void
.end method
