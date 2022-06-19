.class public Ly60$b;
.super Ld10;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly60;-><init>(Lz00;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ly60;Lz00;)V
    .locals 0

    invoke-direct {p0, p2}, Ld10;-><init>(Lz00;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM SystemIdInfo where work_spec_id=?"

    return-object v0
.end method
