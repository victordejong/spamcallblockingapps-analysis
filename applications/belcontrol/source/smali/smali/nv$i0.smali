.class public Lnv$i0;
.super Lnv$k0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnv;->L(JI)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:J

.field public final synthetic h:I

.field public final synthetic j:Lnv;


# direct methods
.method public constructor <init>(Lnv;IZJI)V
    .locals 0

    iput-object p1, p0, Lnv$i0;->j:Lnv;

    iput-wide p4, p0, Lnv$i0;->g:J

    iput p6, p0, Lnv$i0;->h:I

    invoke-direct {p0, p1, p2, p3}, Lnv$k0;-><init>(Lnv;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lnv$i0;->j:Lnv;

    iget-object v0, v0, Lnv;->a:Lpv;

    iget-wide v1, p0, Lnv$i0;->g:J

    iget v3, p0, Lnv$i0;->h:I

    invoke-virtual {v0, v1, v2, v3}, Lpv;->L(JI)V

    return-void
.end method
