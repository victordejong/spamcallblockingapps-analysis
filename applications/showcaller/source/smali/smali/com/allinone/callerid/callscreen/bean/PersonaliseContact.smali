.class public Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;
.super Ljava/lang/Object;
.source "PersonaliseContact.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "personnalcontact"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contacts_counts:I

.field private contacts_id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "contacts_id"
    .end annotation
.end field

.field private dataId:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "data_id"
    .end annotation
.end field

.field private default_themtname:Ljava/lang/String;

.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        autoGen = true
        isId = true
        name = "id"
        property = "NOT NULL"
    .end annotation
.end field

.field private isUseVideoAudioRing:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "isUseVideoAudioRing"
    .end annotation
.end field

.field private is_default:Z

.field private isdiy:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "isdiy"
    .end annotation
.end field

.field public isselect:Z

.field private multiple_number:Ljava/lang/String;

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "contactname"
    .end annotation
.end field

.field private number:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "num"
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "path"
    .end annotation
.end field

.field private ringtone:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "ringtone"
    .end annotation
.end field

.field public sortKey:Ljava/lang/String;

.field private sortLetters:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "sortLetters"
    .end annotation
.end field

.field public sortToken:Lcom/allinone/callerid/customview/SortToken;

.field private themtname:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "themtname"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact$1;

    invoke-direct {v0}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact$1;-><init>()V

    sput-object v0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->contacts_counts:I

    .line 4
    new-instance v0, Lcom/allinone/callerid/customview/SortToken;

    invoke-direct {v0}, Lcom/allinone/callerid/customview/SortToken;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortToken:Lcom/allinone/callerid/customview/SortToken;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->contacts_counts:I

    .line 8
    new-instance v2, Lcom/allinone/callerid/customview/SortToken;

    invoke-direct {v2}, Lcom/allinone/callerid/customview/SortToken;-><init>()V

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortToken:Lcom/allinone/callerid/customview/SortToken;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->id:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->number:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->name:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->themtname:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->path:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortLetters:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->ringtone:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->contacts_id:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->dataId:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isdiy:Z

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->default_themtname:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->is_default:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->contacts_counts:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortKey:Ljava/lang/String;

    .line 24
    const-class v0, Lcom/allinone/callerid/customview/SortToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/customview/SortToken;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortToken:Lcom/allinone/callerid/customview/SortToken;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->multiple_number:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContacts_counts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->contacts_counts:I

    return v0
.end method

.method public getContacts_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->contacts_id:I

    return v0
.end method

.method public getDataId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->dataId:Ljava/lang/String;

    return-object v0
.end method

.method public getDefault_themtname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->default_themtname:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->id:I

    return v0
.end method

.method public getMultiple_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->multiple_number:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->ringtone:Ljava/lang/String;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSortLetters()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortLetters:Ljava/lang/String;

    return-object v0
.end method

.method public getSortToken()Lcom/allinone/callerid/customview/SortToken;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortToken:Lcom/allinone/callerid/customview/SortToken;

    return-object v0
.end method

.method public getThemtname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->themtname:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_default()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->is_default:Z

    return v0
.end method

.method public isIsdiy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isdiy:Z

    return v0
.end method

.method public isIsselect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    return v0
.end method

.method public isUseVideoAudioRing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isUseVideoAudioRing:Z

    return v0
.end method

.method public setContacts_counts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->contacts_counts:I

    return-void
.end method

.method public setContacts_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->contacts_id:I

    return-void
.end method

.method public setDataId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->dataId:Ljava/lang/String;

    return-void
.end method

.method public setDefault_themtname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->default_themtname:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->id:I

    return-void
.end method

.method public setIs_default(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->is_default:Z

    return-void
.end method

.method public setIsdiy(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isdiy:Z

    return-void
.end method

.method public setIsselect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    return-void
.end method

.method public setMultiple_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->multiple_number:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->number:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->path:Ljava/lang/String;

    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->ringtone:Ljava/lang/String;

    return-void
.end method

.method public setSortKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortKey:Ljava/lang/String;

    return-void
.end method

.method public setSortLetters(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortLetters:Ljava/lang/String;

    return-void
.end method

.method public setSortToken(Lcom/allinone/callerid/customview/SortToken;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortToken:Lcom/allinone/callerid/customview/SortToken;

    return-void
.end method

.method public setThemtname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->themtname:Ljava/lang/String;

    return-void
.end method

.method public setUseVideoAudioRing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isUseVideoAudioRing:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersonaliseContact{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isselect="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", themtname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->themtname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sortLetters=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortLetters:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ringtone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->ringtone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contacts_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->contacts_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dataId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->dataId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isdiy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isdiy:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", default_themtname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->default_themtname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", is_default="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->is_default:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", contacts_counts="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->contacts_counts:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sortKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sortToken="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortToken:Lcom/allinone/callerid/customview/SortToken;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", multiple_number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->multiple_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->themtname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortLetters:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->ringtone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->contacts_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->dataId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isdiy:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->default_themtname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->is_default:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 14
    iget v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->contacts_counts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortToken:Lcom/allinone/callerid/customview/SortToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 17
    iget-object p2, p0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->multiple_number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
