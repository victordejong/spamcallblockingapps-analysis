.class public final synthetic Lcom/telguarder/features/advertisements/-$$Lambda$AdvertManager$1$HZJttnuY2t0ZHOILPNwVi10sEiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/advertisements/AdvertManager$1;

.field public final synthetic f$1:Lcom/telguarder/features/advertisements/Adverts;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/advertisements/AdvertManager$1;Lcom/telguarder/features/advertisements/Adverts;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/-$$Lambda$AdvertManager$1$HZJttnuY2t0ZHOILPNwVi10sEiA;->f$0:Lcom/telguarder/features/advertisements/AdvertManager$1;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/-$$Lambda$AdvertManager$1$HZJttnuY2t0ZHOILPNwVi10sEiA;->f$1:Lcom/telguarder/features/advertisements/Adverts;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/-$$Lambda$AdvertManager$1$HZJttnuY2t0ZHOILPNwVi10sEiA;->f$0:Lcom/telguarder/features/advertisements/AdvertManager$1;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/-$$Lambda$AdvertManager$1$HZJttnuY2t0ZHOILPNwVi10sEiA;->f$1:Lcom/telguarder/features/advertisements/Adverts;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/AdvertManager$1;->lambda$onSuccess$0$AdvertManager$1(Lcom/telguarder/features/advertisements/Adverts;)V

    return-void
.end method
