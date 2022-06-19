.class public final Lcom/google/api/services/drive/model/File$Capabilities;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Capabilities"
.end annotation


# instance fields
.field private canAddChildren:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canAddMyDriveParent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canChangeCopyRequiresWriterPermission:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canChangeViewersCanCopyContent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canComment:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canCopy:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canDelete:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canDeleteChildren:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canDownload:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canEdit:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canListChildren:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canModifyContent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canMoveChildrenOutOfDrive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canMoveChildrenOutOfTeamDrive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canMoveChildrenWithinDrive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canMoveChildrenWithinTeamDrive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canMoveItemIntoTeamDrive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canMoveItemOutOfDrive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canMoveItemOutOfTeamDrive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canMoveItemWithinDrive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canMoveItemWithinTeamDrive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canMoveTeamDriveItem:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canReadDrive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canReadRevisions:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canReadTeamDrive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canRemoveChildren:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canRemoveMyDriveParent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canRename:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canShare:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canTrash:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canTrashChildren:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canUntrash:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1514
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 1514
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$Capabilities;->clone()Lcom/google/api/services/drive/model/File$Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 1514
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$Capabilities;->clone()Lcom/google/api/services/drive/model/File$Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 1

    .line 2348
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$Capabilities;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1514
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$Capabilities;->clone()Lcom/google/api/services/drive/model/File$Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public final getCanAddChildren()Ljava/lang/Boolean;
    .locals 1

    .line 1765
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canAddChildren:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanAddMyDriveParent()Ljava/lang/Boolean;
    .locals 1

    .line 1784
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canAddMyDriveParent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanChangeCopyRequiresWriterPermission()Ljava/lang/Boolean;
    .locals 1

    .line 1802
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canChangeCopyRequiresWriterPermission:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanChangeViewersCanCopyContent()Ljava/lang/Boolean;
    .locals 1

    .line 1819
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canChangeViewersCanCopyContent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanComment()Ljava/lang/Boolean;
    .locals 1

    .line 1836
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canComment:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanCopy()Ljava/lang/Boolean;
    .locals 1

    .line 1854
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canCopy:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanDelete()Ljava/lang/Boolean;
    .locals 1

    .line 1872
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canDelete:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanDeleteChildren()Ljava/lang/Boolean;
    .locals 1

    .line 1890
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canDeleteChildren:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanDownload()Ljava/lang/Boolean;
    .locals 1

    .line 1908
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canDownload:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanEdit()Ljava/lang/Boolean;
    .locals 1

    .line 1926
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canEdit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanListChildren()Ljava/lang/Boolean;
    .locals 1

    .line 1945
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canListChildren:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanModifyContent()Ljava/lang/Boolean;
    .locals 1

    .line 1963
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canModifyContent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanMoveChildrenOutOfDrive()Ljava/lang/Boolean;
    .locals 1

    .line 1981
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveChildrenOutOfDrive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanMoveChildrenOutOfTeamDrive()Ljava/lang/Boolean;
    .locals 1

    .line 1999
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveChildrenOutOfTeamDrive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanMoveChildrenWithinDrive()Ljava/lang/Boolean;
    .locals 1

    .line 2017
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveChildrenWithinDrive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanMoveChildrenWithinTeamDrive()Ljava/lang/Boolean;
    .locals 1

    .line 2035
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveChildrenWithinTeamDrive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanMoveItemIntoTeamDrive()Ljava/lang/Boolean;
    .locals 1

    .line 2052
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveItemIntoTeamDrive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanMoveItemOutOfDrive()Ljava/lang/Boolean;
    .locals 1

    .line 2071
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveItemOutOfDrive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanMoveItemOutOfTeamDrive()Ljava/lang/Boolean;
    .locals 1

    .line 2090
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveItemOutOfTeamDrive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanMoveItemWithinDrive()Ljava/lang/Boolean;
    .locals 1

    .line 2109
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveItemWithinDrive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanMoveItemWithinTeamDrive()Ljava/lang/Boolean;
    .locals 1

    .line 2128
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveItemWithinTeamDrive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanMoveTeamDriveItem()Ljava/lang/Boolean;
    .locals 1

    .line 2145
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveTeamDriveItem:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanReadDrive()Ljava/lang/Boolean;
    .locals 1

    .line 2163
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canReadDrive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanReadRevisions()Ljava/lang/Boolean;
    .locals 1

    .line 2183
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canReadRevisions:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanReadTeamDrive()Ljava/lang/Boolean;
    .locals 1

    .line 2202
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canReadTeamDrive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanRemoveChildren()Ljava/lang/Boolean;
    .locals 1

    .line 2221
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canRemoveChildren:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanRemoveMyDriveParent()Ljava/lang/Boolean;
    .locals 1

    .line 2241
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canRemoveMyDriveParent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanRename()Ljava/lang/Boolean;
    .locals 1

    .line 2259
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canRename:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanShare()Ljava/lang/Boolean;
    .locals 1

    .line 2276
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canShare:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanTrash()Ljava/lang/Boolean;
    .locals 1

    .line 2293
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canTrash:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanTrashChildren()Ljava/lang/Boolean;
    .locals 1

    .line 2311
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canTrashChildren:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanUntrash()Ljava/lang/Boolean;
    .locals 1

    .line 2329
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canUntrash:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 1514
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$Capabilities;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$Capabilities;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 1514
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$Capabilities;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$Capabilities;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2343
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File$Capabilities;

    return-object p1
.end method

.method public final setCanAddChildren(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 1774
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canAddChildren:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanAddMyDriveParent(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 1793
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canAddMyDriveParent:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanChangeCopyRequiresWriterPermission(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 1810
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canChangeCopyRequiresWriterPermission:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanChangeViewersCanCopyContent(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 1827
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canChangeViewersCanCopyContent:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanComment(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 1844
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canComment:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanCopy(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 1863
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canCopy:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanDelete(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 1880
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canDelete:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanDeleteChildren(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 1899
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canDeleteChildren:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanDownload(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 1916
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canDownload:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanEdit(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 1935
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canEdit:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanListChildren(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 1954
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canListChildren:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanModifyContent(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 1971
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canModifyContent:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanMoveChildrenOutOfDrive(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 1990
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveChildrenOutOfDrive:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanMoveChildrenOutOfTeamDrive(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2007
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveChildrenOutOfTeamDrive:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanMoveChildrenWithinDrive(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2026
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveChildrenWithinDrive:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanMoveChildrenWithinTeamDrive(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2043
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveChildrenWithinTeamDrive:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanMoveItemIntoTeamDrive(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2060
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveItemIntoTeamDrive:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanMoveItemOutOfDrive(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2081
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveItemOutOfDrive:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanMoveItemOutOfTeamDrive(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2098
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveItemOutOfTeamDrive:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanMoveItemWithinDrive(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2119
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveItemWithinDrive:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanMoveItemWithinTeamDrive(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2136
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveItemWithinTeamDrive:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanMoveTeamDriveItem(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2153
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveTeamDriveItem:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanReadDrive(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2172
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canReadDrive:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanReadRevisions(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2193
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canReadRevisions:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanReadTeamDrive(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2210
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canReadTeamDrive:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanRemoveChildren(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2231
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canRemoveChildren:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanRemoveMyDriveParent(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2250
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canRemoveMyDriveParent:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanRename(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2267
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canRename:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanShare(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2284
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canShare:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanTrash(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2301
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canTrash:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanTrashChildren(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2320
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canTrashChildren:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanUntrash(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .line 2337
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canUntrash:Ljava/lang/Boolean;

    return-object p0
.end method
