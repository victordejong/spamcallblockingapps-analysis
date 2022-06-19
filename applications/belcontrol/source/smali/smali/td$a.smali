.class public final Ltd$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/fragment/app/Fragment;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lme$b;

.field public h:Lme$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltd$a;->a:I

    iput-object p2, p0, Ltd$a;->b:Landroidx/fragment/app/Fragment;

    sget-object p1, Lme$b;->f:Lme$b;

    iput-object p1, p0, Ltd$a;->g:Lme$b;

    iput-object p1, p0, Ltd$a;->h:Lme$b;

    return-void
.end method

.method public constructor <init>(ILandroidx/fragment/app/Fragment;Lme$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltd$a;->a:I

    iput-object p2, p0, Ltd$a;->b:Landroidx/fragment/app/Fragment;

    iget-object p1, p2, Landroidx/fragment/app/Fragment;->mMaxState:Lme$b;

    iput-object p1, p0, Ltd$a;->g:Lme$b;

    iput-object p3, p0, Ltd$a;->h:Lme$b;

    return-void
.end method
