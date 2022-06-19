.class public Landroidx/work/impl/model/WorkProgress;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mProgress:Landroidx/work/d;

.field public final mWorkSpecId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/work/d;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/work/impl/model/WorkProgress;->mWorkSpecId:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Landroidx/work/impl/model/WorkProgress;->mProgress:Landroidx/work/d;

    return-void
.end method
