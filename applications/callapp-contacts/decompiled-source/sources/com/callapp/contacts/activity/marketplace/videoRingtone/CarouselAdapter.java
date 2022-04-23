package com.callapp.contacts.activity.marketplace.videoRingtone;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B(\u0012!\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\u0002\u0010\nJ\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0010H\u0016J\u0018\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0010H\u0016J\u000e\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0010J%\u0010\u0019\u001a\u00020\t2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00050\u000e2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u001cR,\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u000eX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001d"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouseViewHolder;", "itemClick", "Lkotlin/Function1;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;", "Lkotlin/ParameterName;", "name", "item", "", "(Lkotlin/jvm/functions/Function1;)V", "getItemClick", "()Lkotlin/jvm/functions/Function1;", "personalStoreItemDetailsDataList", "", "getItemCount", "", "onBindViewHolder", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "resetLastHighLight", "setItems", "newItems", "selectedIndex", "(Ljava/util/List;Ljava/lang/Integer;)V", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter.class */
public final class CarouselAdapter extends RecyclerView.a<CarouseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    List<PersonalStoreItemDetailsData> f13347a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final Function1<PersonalStoreItemDetailsData, v> f13348b;

    /* JADX WARN: Multi-variable type inference failed */
    public CarouselAdapter(Function1<? super PersonalStoreItemDetailsData, v> itemClick) {
        p.d(itemClick, "itemClick");
        this.f13348b = itemClick;
    }

    public final void a(List<PersonalStoreItemDetailsData> newItems, Integer num) {
        p.d(newItems, "newItems");
        this.f13347a = newItems;
        if (num != null) {
            int intValue = num.intValue();
            this.f13347a.get(intValue).setHighLight(true);
            this.f13348b.invoke(this.f13347a.get(intValue));
        }
        notifyDataSetChanged();
    }

    public final Function1<PersonalStoreItemDetailsData, v> getItemClick() {
        return this.f13348b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final int getItemCount() {
        return this.f13347a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final /* synthetic */ void onBindViewHolder(CarouseViewHolder carouseViewHolder, final int i) {
        CarouseViewHolder holder = carouseViewHolder;
        p.d(holder, "holder");
        PersonalStoreItemDetailsData item = this.f13347a.get(i);
        p.d(item, "item");
        ProfilePictureView profilePictureView = (ProfilePictureView) holder.r.findViewById(2131363565);
        TextView textView = (TextView) holder.r.findViewById(2131362449);
        textView.setText(item.getName());
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        profilePictureView.setText(StringUtils.r(item.getName()));
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(item.getPhotoUrl());
        glideRequestBuilder.j = true;
        glideRequestBuilder.l = true;
        profilePictureView.a(glideRequestBuilder);
        if (item.isHighLight()) {
            profilePictureView.a(true, false);
        } else {
            profilePictureView.a(false, false);
        }
        final ProfilePictureView profilePictureView2 = (ProfilePictureView) holder.itemView.findViewById(2131363565);
        profilePictureView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.CarouselAdapter$onBindViewHolder$1
            /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                List list;
                List list2;
                list = CarouselAdapter.this.f13347a;
                if (!((PersonalStoreItemDetailsData) list.get(i)).isHighLight()) {
                    CarouselAdapter carouselAdapter = CarouselAdapter.this;
                    int i2 = i;
                    int size = carouselAdapter.f13347a.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        if (i2 == i3) {
                            carouselAdapter.f13347a.get(i3).setHighLight(true);
                        } else if (carouselAdapter.f13347a.get(i3).isHighLight()) {
                            carouselAdapter.f13347a.get(i3).setHighLight(false);
                            carouselAdapter.notifyItemChanged(i3);
                        }
                    }
                    profilePictureView2.a(true, true);
                    Function1<PersonalStoreItemDetailsData, v> itemClick = CarouselAdapter.this.getItemClick();
                    list2 = CarouselAdapter.this.f13347a;
                    itemClick.invoke(list2.get(i));
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final /* synthetic */ CarouseViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        p.d(parent, "parent");
        View inflate = LayoutInflater.from(parent.getContext()).inflate(2131558544, parent, false);
        p.b(inflate, "LayoutInflater.from(pare…usel_item, parent, false)");
        return new CarouseViewHolder(inflate);
    }
}
