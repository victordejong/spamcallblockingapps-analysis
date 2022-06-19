.class public Lio/bidmachine/AdRequest$BaseUnifiedAdRequestParams;
.super Lio/bidmachine/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseUnifiedAdRequestParams"
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/AdRequest;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdRequest;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V
    .locals 0

    .line 941
    iput-object p1, p0, Lio/bidmachine/AdRequest$BaseUnifiedAdRequestParams;->this$0:Lio/bidmachine/AdRequest;

    .line 942
    invoke-direct {p0, p2, p3}, Lio/bidmachine/l;-><init>(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method


# virtual methods
.method public getAdRequest()Lio/bidmachine/AdRequest;
    .locals 1

    .line 948
    iget-object v0, p0, Lio/bidmachine/AdRequest$BaseUnifiedAdRequestParams;->this$0:Lio/bidmachine/AdRequest;

    return-object v0
.end method
