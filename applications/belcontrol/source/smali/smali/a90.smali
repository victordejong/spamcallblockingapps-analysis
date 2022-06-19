.class public final synthetic La90;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lha0;


# instance fields
.field public final synthetic a:Lja0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lja0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La90;->a:Lja0;

    iput p2, p0, La90;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, La90;->a:Lja0;

    iget v1, p0, La90;->b:I

    invoke-static {v0, v1}, Lfa0;->H(Lja0;I)V

    return-void
.end method
