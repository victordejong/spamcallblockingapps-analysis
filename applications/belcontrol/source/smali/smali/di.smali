.class public final synthetic Ldi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lfi$a;

.field public final b:Lyi;


# direct methods
.method public constructor <init>(Lfi$a;Lyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldi;->a:Lfi$a;

    iput-object p2, p0, Ldi;->b:Lyi;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldi;->a:Lfi$a;

    iget-object v1, p0, Ldi;->b:Lyi;

    invoke-virtual {v0, v1}, Lfi$a;->j(Lyi;)V

    return-void
.end method
