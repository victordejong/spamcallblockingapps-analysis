.class Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$3;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;I)V

    return-void
.end method
