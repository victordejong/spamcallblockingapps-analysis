.class public Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$ImagePagerAdapter;
.super Landroidx/fragment/app/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImagePagerAdapter"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;)V
    .locals 0

    .line 508
    invoke-direct {p0, p1}, Landroidx/fragment/app/q;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 509
    iput-object p2, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$ImagePagerAdapter;->b:[Ljava/lang/String;

    .line 510
    array-length p1, p2

    iput p1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$ImagePagerAdapter;->a:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 515
    iget v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$ImagePagerAdapter;->a:I

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$ImagePagerAdapter;->b:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/callapp/contacts/activity/fragments/ImageFragment;->a(Ljava/lang/String;)Lcom/callapp/contacts/activity/fragments/ImageFragment;

    move-result-object p1

    return-object p1
.end method
